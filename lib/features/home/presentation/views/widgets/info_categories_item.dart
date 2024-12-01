import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/how_to_play_model.dart';

class InfoCategoriesItem extends StatelessWidget {
  const InfoCategoriesItem({super.key, required this.element});

  final CategoriesModel element;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            element.image,
            height: 40,
            width: 40,
          ),

          const SizedBox(width: 10,),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '${element.title}: ',
                style: Styles.ts18,
                children: <TextSpan>[
                  TextSpan(text: element.desc, style: Styles.ts16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
