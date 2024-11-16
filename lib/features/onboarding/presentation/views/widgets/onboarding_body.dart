import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/features/onboarding/presentation/views/widgets/auth_buttons.dart';
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
        const OnboardingCarousel(),
        const AuthButtons(),
        FloatingActionButton(
          onPressed: () {
            if (context.locale == Locale('en')) {
              context.setLocale(Locale('ar'));
            } else {
              context.setLocale(Locale('en'));
            }
          },
          tooltip: 'Change Language',
          child: Icon(Icons.change_circle),
        ),
      ],
    );
  }
}
