import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/widgets/app_text_button.dart';
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
          const AppTextButton(
            text: "Sign Up",
            textColor: ColorsManager.light80,
          ),
          10.verticalSpace,
          const AppTextButton(
            text: "Login",
            textColor: ColorsManager.violet100,
            backgroundColor: ColorsManager.violet20,
          ),
        ],
      ),
    );
  }
}
