import 'package:expensify/features/onboarding/presentation/views/widgets/auth_buttons.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/onboarding_carousel.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OnboardingCarousel(),
        AuthButtons(),
      ],
    );
  }
}
