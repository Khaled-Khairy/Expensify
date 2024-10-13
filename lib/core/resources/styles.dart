import 'package:expensify/core/helpers/font_weight_helper.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle titleX({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 64.sp,
        color: color,
        fontWeight: FontWeightHelper.bold,
      );

  static TextStyle title1({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 32.sp,
        color: color,
        fontWeight: FontWeightHelper.bold,
      );

  static TextStyle title2({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 24.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle title3({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 18.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle body1({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle body2({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle body3({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 14.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle small({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 13.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );

  static TextStyle tiny({Color? color = ColorsManager.dark50}) => TextStyle(
        fontSize: 12.sp,
        color: color,
        fontWeight: FontWeightHelper.medium,
      );
}
