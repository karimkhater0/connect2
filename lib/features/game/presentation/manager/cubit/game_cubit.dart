import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:connect2/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/cache_helper.dart';
import '../../../../../core/database_helper.dart';
import '../../../../home/data/how_to_play_model.dart';
import '../../../../home/data/player_model.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());

  static GameCubit get(context) => BlocProvider.of(context);
  static final AudioPlayer _audioPlayer = AudioPlayer();
  bool isSoundOn = CacheHelper.getData(key: 'isSoundOn') ?? true;
  int highScore = CacheHelper.getData(key: 'highScore') ?? 0;
  void setHighScore()
  {
    if(score > highScore)
      {
        CacheHelper.saveData(key: 'highScore', value: score);
        highScore = score;
        emit(GameSetHighScore(highScore));
      }
  }

  int skips = 3;
  void skipPlayer() {
    if (skips > 0) {
      skips--;
      getNextPlayer();
      emit(GameReduceSkips(skips));
    }
  }

  int score = 0;
  void increaseScore() {
    score++;
    emit(GameIncreaseScore(score));
  }


  int lives = 3;
  void reduceLives() {
    if (lives > 0) {
      lives--;
      emit(GameReduceLives(lives));
      if(lives == 0){ emit(GameOver()); }
    }
  }

  final Random _random = Random();


  List<Player> players = [];
  Map<Categories,int> attemptsLeft = {
    Categories.nation: 7,
    Categories.position: 7,
    Categories.trophy: 7,
    Categories.league: 7,
    Categories.club: 7,
    Categories.award: 7,
  };


  Future<void> getRandomPlayer(int index)async {
    int randomIndex = _random.nextInt(players.length);
    debugPrint(players[randomIndex].name);
    index == 1
        ? player1 = players[randomIndex]
        : player2 = players[randomIndex];


  }

  Future<void> getPlayers() async {
    try {
      emit(GetPlayersLoadingState());
      players = await _dbHelper.getPlayers();
      emit(GetPlayersSuccessState());
    } catch (e) {
      emit(GetPlayersErrorState(e.toString()));
    }
  }

  Player? player1;
  Player? player2;
  Future<void> startGame()async{
    await getPlayers();
    attemptsLeft = {
      Categories.nation: 7,
      Categories.position: 7,
      Categories.trophy: 7,
      Categories.league: 7,
      Categories.club: 7,
      Categories.award: 7,
    };
    emit(GameGetPlayerLoadingState());
    getRandomPlayer(1);
    emit(GameCyclePlayers());
    for(var i=0; i<10; i++) {
      getRandomPlayer(2);
      emit(GameCyclePlayers());
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if(player2 == player1){
      getRandomPlayer(2);
    }
    emit(GameGetPlayerSuccessState());
  }

  Future<void> getNextPlayer()async{
    emit(GameGetPlayerLoadingState());
    players.remove(player1);
    player1 = player2;
    for(var i=0; i<8; i++) {
      getRandomPlayer(2);
      emit(GameCyclePlayers());
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if(player2 == player1){
      getRandomPlayer(2);
    }
    emit(GameGetPlayerSuccessState());
  }

  bool checkAnswer(Categories category) {
    debugPrint('connecting: ${player1!.name}, ${player2!.name}');
    bool isPlayersConnected = false;
    switch (category) {
      case Categories.nation:
          if(player1!.nationality == player2!.nationality)
          {
            attemptsLeft[Categories.nation] = attemptsLeft[Categories.nation]! - 1;
            isPlayersConnected = true;
            break;
          }

      case Categories.award:
        {
          if(player1!.awards.first == Awards.empty
              || player2!.awards.first == Awards.empty)
            {
              isPlayersConnected = false;
              break;
            }
          for(var element1 in player1!.awards)
            {
              for(var element2 in player2!.awards)
                {

                  if(element2 == element1)
                  {
                    attemptsLeft[Categories.award] = attemptsLeft[Categories.award]! - 1;
                    isPlayersConnected = true;
                    break;
                  }
                }
              if(isPlayersConnected)break;
            }
        }
      case Categories.club:
        {
          for(var element1 in player1!.clubs)
          {
            for(var element2 in player2!.clubs)
            {
              if(element2 == element1)
              {
                attemptsLeft[Categories.club] = attemptsLeft[Categories.club]! - 1;
                isPlayersConnected = true;
                break;
              }
            }
            if(isPlayersConnected)break;
          }

        }
      case Categories.league:
        {
          for(var element1 in player1!.leagues)
          {
            for(var element2 in player2!.leagues)
            {
              if(element2 == element1)
              {
                attemptsLeft[Categories.league] = attemptsLeft[Categories.league]! - 1;
                isPlayersConnected = true;
                break;
              }
            }
            if(isPlayersConnected)break;

          }
        }
      case Categories.trophy:
        {
          if(player1!.trophies.first == Trophies.empty
              || player2!.trophies.first == Trophies.empty)
          {
            isPlayersConnected = false;
            break;
          }
          for(var element1 in player1!.trophies)
          {
            for(var element2 in player2!.trophies)
            {
              if(element2 == element1)
              {
                attemptsLeft[Categories.trophy] = attemptsLeft[Categories.trophy]! - 1;
                isPlayersConnected = true;
                break;
              }
            }
            if(isPlayersConnected)break;

          }
        }
      case Categories.position:
      {
        if(player1!.position == player2!.position)
        {
          attemptsLeft[Categories.position] = attemptsLeft[Categories.position]! - 1;
          isPlayersConnected = true;
        }
        break;
      }
    }

    /// check if all attempts are used
      if(attemptsLeft.values.every((element) => element == 0))
        {
          emit(GameOver());
        }

    return isPlayersConnected;
  }

  Future<void> connectPlayers(Categories category)async{
    bool isAnswerCorrect = checkAnswer(category);
    if(isAnswerCorrect){
      if(isSoundOn)
        {
          await _audioPlayer.play(AssetSource(Assets.soundsCorrect));
        }
      increaseScore();
      getNextPlayer();
    }
    else
      {
        if(isSoundOn)
          {
            await _audioPlayer.play(AssetSource(Assets.soundsWrong));
          }
        reduceLives();
      }

  }


  final _dbHelper = DatabaseHelper.instance;
  Future<void> initializeDatabase() async {
    try {
      emit(CreateDatabaseLoadingState());
      await _dbHelper.database;
      emit(CreateDatabaseSuccessState());
    } catch (e) {
      emit(CreateDatabaseErrorState(e.toString()));
    }
  }

}
