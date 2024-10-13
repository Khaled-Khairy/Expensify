import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/routing/app_router.dart';
import 'package:expensify/expensify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  _initializeApp();
  runApp(Expensify(appRouter: AppRouter()));
}

Future<void> _initializeApp() async {
  await ScreenUtil.ensureScreenSize();
  _setSystemUIStyles();
  _lockPortraitMode();
}

void _setSystemUIStyles() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: ColorsManager.violet100,
      statusBarColor: ColorsManager.violet100,
    ),
  );
}

void _lockPortraitMode() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}
