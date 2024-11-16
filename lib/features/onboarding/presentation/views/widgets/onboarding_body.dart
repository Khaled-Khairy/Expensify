import 'package:expensify/features/onboarding/presentation/views/widgets/auth_buttons.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/onboarding_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const OnboardingCarousel(),
        const AuthButtons(),
      ],
    );
  }
}
