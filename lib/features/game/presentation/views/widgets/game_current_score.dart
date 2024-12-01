import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../manager/cubit/game_cubit.dart';

class GameCurrentScore extends StatelessWidget {
  const GameCurrentScore({super.key, });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            var cubit = GameCubit.get(context);
            return Text(
              'Streak: ${cubit.score} | Skips left: ${cubit.skips}', style: Styles.ts18,);
          }
      ),
    );
  }
}
