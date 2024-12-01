import 'package:connect2/core/utils/widgets/custom_background_widget.dart';
import 'package:connect2/features/game/presentation/views/widgets/players_images_row.dart';
import 'package:connect2/features/game/presentation/views/widgets/skip_button.dart';
import 'package:flutter/material.dart';

import 'categories_listview.dart';
import 'game_current_score.dart';
import 'high_score_widget.dart';
import 'lives_left_widget.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomBackGroundWidget(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HighScoreWidget(),
              LivesLeftWidget(),
              GameCurrentScore(),
              PlayersImagesRow(),
              CategoriesListView(),
              SkipButton(),

            ],
          ),
        )
    );
  }
}







