import 'package:carousel_slider/carousel_slider.dart';
import 'package:expensify/core/resources/assets.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/resources/styles.dart';
import 'package:expensify/features/onboarding/data/models/carousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({super.key});

  static const List<CarouselItemModel> items = [
    CarouselItemModel(
      image: Assets.carouselImage1,
      title: 'Gain total control of your money',
      subtitle: 'Become your own money manager and make every cent count',
    ),
    CarouselItemModel(
      image: Assets.carouselImage2,
      title: 'Know where your money goes',
      subtitle:
          'Track your transaction easily,with categories and financial report ',
    ),
    CarouselItemModel(
      image: Assets.carouselImage3,
      title: 'Planning ahead',
      subtitle: 'Setup your budget for each category so you in control',
    ),
  ];

  @override
  State<OnboardingCarousel> createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: OnboardingCarousel.items.map(
            (item) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.image,
                      height: 300.h,
                    ),
                    20.verticalSpace,
                    Text(
                      item.title,
                      style: TextStyles.title1(),
                      textAlign: TextAlign.center,
                    ),
                    6.verticalSpace,
                    Text(
                      item.subtitle,
                      style: TextStyles.body1(color: ColorsManager.light20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ).toList(),
          options: CarouselOptions(
              height: 540.h,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: 3,
          effect: const WormEffect(
            activeDotColor: ColorsManager.violet100,
            dotColor: ColorsManager.light20,
            dotHeight: 14,
            dotWidth: 14,
            spacing: 18,
          ),
        ),
      ],
    );
  }
}
