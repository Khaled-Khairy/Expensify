import 'package:carousel_slider/carousel_slider.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:expensify/features/onboarding/data/carousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'carousel_item.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({super.key});

  @override
  State<OnboardingCarousel> createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: CarouselItemModel.getCarouselItems.length,
          itemBuilder: (context, index, realIndex) {
            return CarouselItem(
              carouselItemModel:
                  CarouselItemModel.getCarouselItems[index],
            );
          },
          options: CarouselOptions(
            height: 480.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: CarouselItemModel.getCarouselItems.length,
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
