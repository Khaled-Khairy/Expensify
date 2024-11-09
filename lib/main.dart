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
  runApp(Expensify(appRouter: AppRouter()));
}

Future<void> initializeApp() async {
  await Future.wait(
    [
      ScreenUtil.ensureScreenSize(),
      SharedPrefHelper.init(),
    ],
  );

  setSystemUIStyles();
  lockPortraitMode();
}

setSystemUIStyles() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: ColorsManager.violet100,
      statusBarColor: ColorsManager.violet100,
    ),
  );
}

lockPortraitMode() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}
