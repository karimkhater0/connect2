import 'package:connect2/core/utils/widgets/custom_background_widget.dart';
import 'package:connect2/features/settings/presentation/manager/settings_cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundWidget(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).sound,
                      style: Styles.tsSubtitle.copyWith(
                        color: Colors.black
                      ),
                    ),
                    BlocBuilder<SettingsCubit, SettingsState>(
                      builder: (context, state) {
                        var cubit = SettingsCubit.get(context);
                        return Switch(
                            value: cubit.isSoundOn,
                            onChanged: (value){
                              cubit.toggleSound(value);
                            }
                        );
                      }
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
