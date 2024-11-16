import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/helpers/shared_pref_helper.dart';
import 'package:expensify/core/helpers/shared_pref_keys.dart';
import 'package:flutter/material.dart';

bool isLoggedUser = false;

/// Checks if the user is logged in
Future<void> checkIfLoggedUser() async {
  final String userToken =
      await SharedPrefHelper.getString(key: SharedPrefKeys.accessToken) ?? '';
  isLoggedUser = userToken.isNotEmpty;
}

/// Closes the keyboard
void closeKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (currentFocus.hasFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }
}

bool isArabic(BuildContext context) {
  return context.locale.languageCode == 'ar';
}

bool isEnglish(BuildContext context) {
  return context.locale.languageCode == 'en';
}
