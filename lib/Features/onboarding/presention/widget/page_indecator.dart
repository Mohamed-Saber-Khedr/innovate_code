import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:innova_code/core/cubit/onboard_cubit.dart';
import 'package:innova_code/Features/onboarding/presention/view/onboarding.dart';


SmoothPageIndicator smoothPageIndicator(OnboardCubit onboardCubit) {
  return SmoothPageIndicator(
    controller: onboardCubit.pageController,
    count: pages.length,
    effect: const WormEffect(
      activeDotColor: Color(0xff021026),
      dotColor: Color(0xffE3E3E3),
      dotHeight: 4,
      dotWidth: 15,
      spacing: 10,
    ),
  );
}
