import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/game_cubit.dart';

class LivesLeftWidget extends StatelessWidget {
  const LivesLeftWidget({super.key,});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          var cubit = GameCubit.get(context);
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) =>
                Icon(
                  Icons.favorite, size: 30,
                  color: cubit.lives > index ? Colors.red : Colors.grey,
                ),
            ),
          );
        }
    );
  }
}
