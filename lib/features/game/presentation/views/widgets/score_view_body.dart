import 'package:connect2/core/utils/functions/navigation_functions.dart';
import 'package:connect2/core/utils/widgets/custom_background_widget.dart';
import 'package:connect2/features/game/presentation/manager/cubit/game_cubit.dart';
import 'package:connect2/features/game/presentation/views/game_view.dart';
import 'package:connect2/features/game/presentation/views/widgets/high_score_widget.dart';
import 'package:connect2/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class ScoreViewBody extends StatelessWidget {
  const ScoreViewBody({super.key, });


  @override
  Widget build(BuildContext context) {

    return CustomBackGroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(bottom: 10,),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const HighScoreWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: BlocBuilder<GameCubit, GameState>(
                      builder: (context, state) {
                        return Text(
                          'Your Score: ${GameCubit.get(context).score}',
                          style: Styles.ts24.copyWith(color: Colors.black),
                        );
                      }
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          navigateAndFinish(context, const HomeView());
                        },
                        child: SvgPicture.asset(Assets.buttonsHomeBtn),
                      ),
                      //const SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          navigateReplacement(context, const GameView());
                        },
                        child: SvgPicture.asset(Assets.buttonsRedoBtn),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
    );
  }
}
