import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/helpers/locale_keys.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/widgets/app_text_button.dart';
import 'package:expensify/expensify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AuthButtons extends StatelessWidget {
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 46.h),
      child: Column(
        children: [
           AppTextButton(
            text: context.tr(LocaleKeys.authenticationOnboardingLogin),
            textColor: ColorsManager.light80,
          ),
          10.verticalSpace,
           AppTextButton(
            text: context.tr(LocaleKeys.authenticationOnboardingSignup),
            textColor: ColorsManager.violet100,
            backgroundColor: ColorsManager.violet20,
          ),
        ],
      ),
    );
  }
}
