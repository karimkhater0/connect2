import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/data/how_to_play_model.dart';
import 'categories_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> categories = [
      CategoriesModel(
        title: S.of(context).category1_title,
        image: Assets.categoriesAward,
        category: Categories.award,
      ),
      CategoriesModel(
        title: S.of(context).category2_title,
        image: Assets.categoriesNation,
        category: Categories.nation,
      ),
      CategoriesModel(
        title: S.of(context).category3_title,
        image: Assets.categoriesClub,
        category: Categories.club,
      ),
      CategoriesModel(
        title: S.of(context).category4_title,
        image: Assets.categoriesLeague,
        category: Categories.league,
      ),
      CategoriesModel(
          title: S.of(context).category5_title,
          image: Assets.categoriesTrophy,
          category: Categories.trophy
      ),
      CategoriesModel(
        title: S.of(context).category6_title,
        image: Assets.categoriesPosition,
        category: Categories.position,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20,),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          childAspectRatio: 1,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoriesItem(element: categories[index]),
      ),
    );
  }
}
