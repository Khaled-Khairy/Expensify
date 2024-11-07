import 'package:expensify/core/locale/generated/l10n.dart';
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
          title: S.of(context).carouselImage1_title,
          subtitle: S.of(context).carouselImage1_subtitle,
        ),
        CarouselItemModel(
          image: Assets.carouselImage2,
          title: S.of(context).carouselImage2_title,
          subtitle: S.of(context).carouselImage2_subtitle,
        ),
        CarouselItemModel(
          image: Assets.carouselImage3,
          title: S.of(context).carouselImage3_title,
          subtitle: S.of(context).carouselImage3_subtitle,
        ),
      ];
}
