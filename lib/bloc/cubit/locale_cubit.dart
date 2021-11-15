import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:liveasy_assignment/localization/language.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(const LocaleState(Locale('en')));

  ///Switch app language
  void changeLanguage(String code) {
    emit(
      LocaleState(
        Locale(
          languageList.firstWhere((e) => e.code == code).code,
        ),
      ),
    );
  }
}
