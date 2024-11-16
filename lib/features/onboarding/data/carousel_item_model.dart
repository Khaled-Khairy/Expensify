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
          title: 'Gain total control of your money',
          subtitle: 'Become your own money manager and make every cent count',
        ),
        CarouselItemModel(
          image: Assets.carouselImage2,
          title: 'Know where your money goes',
          subtitle: 'Track your transaction easily, with categories and financial report',
        ),
        CarouselItemModel(
          image: Assets.carouselImage3,
          title: 'Planning ahead',
          subtitle: 'Setup your budget for each category so you are in control',
        ),
      ];
}
