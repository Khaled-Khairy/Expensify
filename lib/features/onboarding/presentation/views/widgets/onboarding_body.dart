import 'package:expensify/core/widgets/language_switcher.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/onboarding_buttons.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/onboarding_carousel.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LanguageSwitcher(),
        const OnboardingCarousel(),
        const OnboardingButtons(),
      ],
    );
  }
}
