import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/resources/styles.dart';
import 'package:expensify/features/onboarding/data/carousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselItem extends StatelessWidget {
  final CarouselItemModel carouselItemModel;

  const CarouselItem({
    super.key,
    required this.carouselItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            carouselItemModel.image,
            height: 300.h,
          ),
          10.verticalSpace,
          Text(
            carouselItemModel.title,
            style: TextStyles.title1(),
            textAlign: TextAlign.center,
          ),
          6.verticalSpace,
          Text(
            carouselItemModel.subtitle,
            style: TextStyles.body1(color: ColorsManager.dark25),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
