import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/resources/theme.dart';
import 'package:expensify/core/routing/app_router.dart';
import 'package:expensify/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Expensify extends StatelessWidget {
  const Expensify({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRouter,
        initialRoute: Routes.onboardingScreen,
        theme: theme(context),
      ),
    );
  }
}
