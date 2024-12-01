import 'package:connect2/core/utils/constants.dart';
import 'package:connect2/features/home/presentation/views/widgets/custom_settings_widget.dart';
import 'package:connect2/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kPurpleDark,
        elevation: 0,
        actions: const [ CustomSettingsWidget() ],
      ),
      body: const HomeViewBody(),
    );
  }
}

