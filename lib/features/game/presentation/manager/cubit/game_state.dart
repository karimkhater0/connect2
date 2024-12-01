part of 'game_cubit.dart';

@immutable
sealed class GameState {}

final class GameInitial extends GameState {}

final class CreateDatabaseLoadingState extends GameState {}
final class CreateDatabaseSuccessState extends GameState {}
final class CreateDatabaseErrorState extends GameState {
  final String error;

  CreateDatabaseErrorState(this.error);
}

final class GetPlayersLoadingState extends GameState {}
final class GetPlayersSuccessState extends GameState {}
final class GetPlayersErrorState extends GameState {
  final String error;

  GetPlayersErrorState(this.error);
}

final class GameCyclePlayers extends GameState{}

final class GameSetHighScore extends GameState{
  final int highScore;

  GameSetHighScore(this.highScore);
}

final class GameOver extends GameState{}

final class GameReduceAttempts extends GameState{}

final class GameGetPlayerLoadingState extends GameState{}
final class GameGetPlayerSuccessState extends GameState{}

final class GameReduceSkips extends GameState {
  final int skips;

  GameReduceSkips(this.skips);
}

final class GameIncreaseScore extends GameState {
  final int score;

  GameIncreaseScore(this.score);
}

final class GameReduceLives extends GameState {
  final int lives;

  GameReduceLives(this.lives);
}

