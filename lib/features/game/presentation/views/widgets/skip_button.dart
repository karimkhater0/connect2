import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/game_cubit.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        var cubit = GameCubit.get(context);
        return ElevatedButton(
          onPressed: cubit.skips > 0 ? cubit.skipPlayer : null,
          child: const Text('Skip'),
        );
      },
    );
  }
}
