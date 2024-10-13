import 'package:carousel_slider/carousel_slider.dart';
import 'package:expensify/core/localization/generated/l10n.dart';
import 'package:expensify/core/resources/assets.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/core/resources/styles.dart';
import 'package:expensify/features/onboarding/data/models/carousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({super.key});

  static const List<String> itemImages = [
    Assets.carouselImage1,
    Assets.carouselImage2,
    Assets.carouselImage3,
  ];
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
          items: List.generate(
            OnboardingCarousel.itemImages.length,
            (index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      OnboardingCarousel.itemImages[index],
                      height: 300.h,
                    ),
                    20.verticalSpace,
                    Text(
                      _getLocalizedTitle(index, context),
                      style: TextStyles.title1(),
                      textAlign: TextAlign.center,
                    ),
                    6.verticalSpace,
                    Text(
                      _getLocalizedSubtitle(index, context),
                      style: TextStyles.body1(color: ColorsManager.dark25),
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

  String _getLocalizedTitle(int index, BuildContext context) {
    switch (index) {
      case 0:
        return S.of(context).carouselImage1_title;
      case 1:
        return S.of(context).carouselImage2_title;
      case 2:
        return S.of(context).carouselImage3_title;
      default:
        return '';
    }
  }

  String _getLocalizedSubtitle(int index, BuildContext context) {
    switch (index) {
      case 0:
        return S.of(context).carouselImage1_subtitle;
      case 1:
        return S.of(context).carouselImage2_subtitle;
      case 2:
        return S.of(context).carouselImage3_subtitle;
      default:
        return '';
    }
  }
}
