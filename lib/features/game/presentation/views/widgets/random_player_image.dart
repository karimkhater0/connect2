import 'package:connect2/features/game/presentation/manager/cubit/game_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomPlayerImage extends StatelessWidget {
  const RandomPlayerImage({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(builder: (context, state) {
      var cubit = GameCubit.get(context);
      return state is GetPlayersLoadingState
          ? const CircularProgressIndicator()
          : Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white),
                  child: Image(
                    image: AssetImage(
                      index == 1
                          ? cubit.player1?.image ?? ''
                          : cubit.player2?.image ?? '',
                    ),
                    height: 120,
                    width: 90,
                    fit: BoxFit.fill,
                  ),
                ),
                cubit.player1 != null
                    ? Text(
                        index == 1 ? cubit.player1!.name : cubit.player2!.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    : const Text(''),
              ],
            );
    });
  }
}
