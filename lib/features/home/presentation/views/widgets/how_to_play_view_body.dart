import 'package:connect2/core/utils/widgets/custom_background_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/how_to_play_model.dart';
import 'info_categories_item.dart';

class HowToPlayViewBody extends StatelessWidget {
  const HowToPlayViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> categories = [
      CategoriesModel(
        title: S.of(context).category1_title,
        desc: S.of(context).category1_desc,
        image: Assets.categoriesAward,
      ),
      CategoriesModel(
        title: S.of(context).category2_title,
        desc: S.of(context).category2_desc,
        image: Assets.categoriesNation,
      ),
      CategoriesModel(
        title: S.of(context).category3_title,
        desc: S.of(context).category3_desc,
        image: Assets.categoriesClub,
      ),
      CategoriesModel(
        title: S.of(context).category4_title,
        desc: S.of(context).category4_desc,
        image: Assets.categoriesLeague,
      ),
      CategoriesModel(
        title: S.of(context).category5_title,
        desc: S.of(context).category5_desc,
        image: Assets.categoriesTrophy,
      ),
      CategoriesModel(
        title: S.of(context).category6_title,
        desc: S.of(context).category6_desc,
        image: Assets.categoriesPosition,
      ),
    ];
    return CustomBackGroundWidget(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Text(
                  S.of(context).how_to_play,
                  style: Styles.tsTitle,
                ),
                Text(
                  S.of(context).how_to_play_desc,
                  style: Styles.ts16,
                ),
                const SizedBox(height: 20,),

                Text(
                  S.of(context).categories,
                  style: Styles.tsSubtitle,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: categories.map((element) =>
                      InfoCategoriesItem(element: element)).toList(),
                ),
              ],
            ),
          ),
        )
    );
  }
}
