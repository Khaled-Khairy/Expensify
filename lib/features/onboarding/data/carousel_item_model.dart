import 'package:easy_localization/easy_localization.dart';
import 'package:expensify/core/helpers/locale_keys.dart';
import 'package:expensify/core/resources/assets.dart';
import 'package:flutter/material.dart';

class CarouselItemModel {
  final String image;
  final String title;
  final String subtitle;

  const CarouselItemModel(
      {required this.image, required this.title, required this.subtitle});

  static List<CarouselItemModel> getCarouselItems(BuildContext context) => [
        CarouselItemModel(
          image: Assets.carouselImage1,
          title: context.tr(LocaleKeys.onboardingCarouselImage1Title),
          subtitle: context.tr(LocaleKeys.onboardingCarouselImage1Subtitle),
        ),
        CarouselItemModel(
          image: Assets.carouselImage2,
          title: context.tr(LocaleKeys.onboardingCarouselImage2Title),
          subtitle: context.tr(LocaleKeys.onboardingCarouselImage2Subtitle),
        ),
        CarouselItemModel(
          image: Assets.carouselImage3,
          title: context.tr(LocaleKeys.onboardingCarouselImage3Title),
          subtitle: context.tr(LocaleKeys.onboardingCarouselImage3Subtitle),
        ),
      ];
}
