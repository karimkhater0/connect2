import 'package:connect2/core/utils/constants.dart';
import 'package:connect2/core/utils/functions/navigation_functions.dart';
import 'package:connect2/features/home/presentation/views/home_view.dart';
import 'package:connect2/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/utils/widgets/custom_background_widget.dart';
import '../../../../generated/l10n.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..splashNavigateHome(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashSuccess) {
            navigateAndFinish(context, const HomeView());
          }
        },
        builder: (context, state) => Scaffold(
          body: CustomBackGroundWidget(
            gradient: linGradientPurple,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'connect 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                Text(
                  S.of(context).loading,
                  style: Styles.tsCaption16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

