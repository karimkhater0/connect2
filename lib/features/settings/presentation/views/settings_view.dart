import 'package:connect2/features/settings/presentation/manager/settings_cubit/settings_cubit.dart';
import 'package:connect2/features/settings/presentation/views/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: const Scaffold(
        body: SettingsViewBody(),
      ),
    );
  }
}
