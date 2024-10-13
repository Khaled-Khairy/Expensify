import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onTap,
    required this.text,
    this.backgroundColor,
    this.textColor,
  });

  final void Function()? onTap;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56.h,
        decoration: BoxDecoration(
          color: backgroundColor ?? ColorsManager.violet100,
          borderRadius: BorderRadius.circular(16.w),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.title3(color: textColor),
          ),
        ),
      ),
    );
  }
}
