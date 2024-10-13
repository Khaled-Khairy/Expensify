import 'package:expensify/features/onboarding/presentation/views/widgets/auth_buttons.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/onboarding_carousel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/locale_button.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Align(alignment: Alignment.topRight, child: LocaleButton()),
        ),
        OnboardingCarousel(),
        AuthButtons(),
      ],
    );
  }
}
