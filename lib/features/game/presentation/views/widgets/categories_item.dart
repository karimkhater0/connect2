import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../home/data/how_to_play_model.dart';
import '../../manager/cubit/game_cubit.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.element});

  final CategoriesModel element;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          var cubit = GameCubit.get(context);
          int attemptsLeft = cubit.attemptsLeft[element.category!]!;

          return InkWell(
            onTap: attemptsLeft > 0
                && state is !GameGetPlayerLoadingState
                && state is !GameCyclePlayers
                ? () => cubit.connectPlayers(element.category!)
                : null,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color: attemptsLeft > 0 ? Colors.white : Colors.grey,
                    width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(element.image, height: 50,width: 50,),
                  Text(
                    element.title.substring(5),
                    style: TextStyle(
                      color: attemptsLeft > 0 ? Colors.white : Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '$attemptsLeft left',
                    style: TextStyle(
                      color: attemptsLeft > 0 ? Colors.white : Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
