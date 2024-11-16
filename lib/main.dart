import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/helpers/shared_pref_helper.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/routing/app_router.dart';
import 'package:expensify/expensify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: Expensify(
        appRouter: AppRouter(),
      ),
    ),
  );
}

/// basic function to initialize the main app
Future<void> initializeApp() async {
  await Future.wait(
    [
      EasyLocalization.ensureInitialized(),
      ScreenUtil.ensureScreenSize(),
      SharedPrefHelper.init(),
    ],
  );

  setSystemUIStyles();
  lockPortraitMode();
}

/// the status bar at the top and bottom nav bar colors
setSystemUIStyles() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: ColorsManager.violet100,
      statusBarColor: ColorsManager.violet100,
    ),
  );
}

/// disable device orientation
lockPortraitMode() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}
