import 'package:connect2/core/utils/functions/navigation_functions.dart';
import 'package:connect2/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class CustomSettingsWidget extends StatelessWidget {
  const CustomSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        onTap: (){
          navigateTo(context, const SettingsView());
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPurple,
            border: Border.all(color: Colors.white, width: 4),
          ),
          child: const Icon(Icons.settings_rounded, color: Colors.white,size: 20,),
        ),
      ),
    );
  }
}
