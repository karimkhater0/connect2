import 'package:connect2/features/game/presentation/manager/cubit/game_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class HighScoreWidget extends StatelessWidget {
  const HighScoreWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kPurple,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            const Text(
              'High Score',
              style: Styles.tsSubtitle,
            ),
            BlocConsumer<GameCubit, GameState>(
              listener: (context, state){
                var cubit = GameCubit.get(context);
                cubit.setHighScore();
              },
              builder: (context, state) {
                return Text(
                  GameCubit.get(context).highScore.toString(),
                  style: Styles.ts16,
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
