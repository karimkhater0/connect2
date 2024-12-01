import 'package:connect2/core/utils/functions/navigation_functions.dart';
import 'package:connect2/core/utils/styles.dart';
import 'package:connect2/core/utils/widgets/custom_background_widget.dart';
import 'package:connect2/features/home/presentation/views/how_to_play_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../game/presentation/views/game_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Play',
            onTap: (){
              navigateTo(context, const GameView());
            },
          ),
          const SizedBox(height: 30,),
          CustomButton(
            text: 'How To Play?',
            onTap: (){
              navigateTo(context, const HowToPlayView());
            },
            style: Styles.ts18,

          ),
        ],
      ),
    );
  }
}

