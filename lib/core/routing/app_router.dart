import 'package:expensify/core/routing/routes.dart';
import 'package:expensify/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      default:
        return null;
    }
  }
}
