import 'package:connect2/features/game/presentation/manager/cubit/game_cubit.dart';
import 'package:connect2/features/game/presentation/views/widgets/game_view_body.dart';
import 'package:connect2/features/game/presentation/views/widgets/score_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit()..startGame(),
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          return Scaffold(
            body: state is GameOver
                ? const ScoreViewBody()
                : const GameViewBody(),
          );
        }
      ),
    );
  }
}
