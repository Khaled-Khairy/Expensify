import 'package:expensify/core/helpers/shared_pref_helper.dart';
import 'package:expensify/core/helpers/shared_pref_keys.dart';
import 'package:flutter/material.dart';

bool isLoggedUser = false;

/// Checks if the user is logged in
Future<void> checkIfLoggedUser() async {
  try {
    final String userToken = await SharedPrefHelper.getString(key: SharedPrefKeys.accessToken);
    isLoggedUser = userToken.isNotEmpty;
  } catch (e) {
    isLoggedUser = false;
  }
}

/// Closes the keyboard
void closeKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (currentFocus.hasFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }
}




