import 'package:expensify/core/helpers/shared_pref_helper.dart';
import 'package:expensify/core/helpers/shared_pref_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationCubit extends Cubit<Locale> {
  LocalizationCubit() : super(const Locale('en')) {
    loadLocale();
  }

  void changeLocale(String languageCode) async {
    await SharedPrefHelper.setData(key: SharedPrefKeys.languageCode, value: languageCode);
    emit(Locale(languageCode));
  }

  Future<void> loadLocale() async {
    final String savedLanguageCode = await SharedPrefHelper.getString(key: SharedPrefKeys.languageCode) ?? 'en';
    emit(Locale(savedLanguageCode));
  }
}
