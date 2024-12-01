import 'package:connect2/core/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  static SettingsCubit get(context) => BlocProvider.of(context);

  bool isSoundOn = CacheHelper.getData(key: 'isSoundOn') ?? true;
  void toggleSound(bool isOn)async
  {
    isSoundOn = isOn;
    await CacheHelper.saveData(key: 'isSoundOn', value: isOn);
    emit(SettingsChangeSoundState());
  }
}
