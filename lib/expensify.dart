import 'package:expensify/core/cubits/locale_cubit.dart';
import 'package:expensify/core/resources/theme.dart';
import 'package:expensify/core/routing/app_router.dart';
import 'package:expensify/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/localization/generated/l10n.dart';

class Expensify extends StatelessWidget {
  const Expensify({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => LocalizationCubit(),
        child: BlocBuilder<LocalizationCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp(
              locale: locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRouter,
              initialRoute: Routes.onboardingScreen,
              theme: theme,
            );
          },
        ),
      ),
    );
  }
}
