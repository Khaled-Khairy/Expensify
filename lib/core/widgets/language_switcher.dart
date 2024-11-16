import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/helpers/functions.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: GestureDetector(
          onTap: () {
            // Toggle between 'en' and 'ar' locales
            if (context.locale.languageCode == 'en') {
              context.setLocale(Locale('ar'));
            } else {
              context.setLocale(Locale('en'));
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
            decoration: BoxDecoration(
              color: ColorsManager.violet100,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              textDirection: ui.TextDirection.ltr,
              children: [
                Text(
                  isEnglish(context) ? 'العربية' : 'English',
                  style: TextStyles.title3(color: Colors.white),
                ),
                8.horizontalSpace,
                Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
