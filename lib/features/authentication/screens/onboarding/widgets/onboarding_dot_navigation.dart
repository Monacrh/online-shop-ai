import 'package:flutter/material.dart';
import 'package:online_shop_ai/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:online_shop_ai/utils/constants/colors.dart';
import 'package:online_shop_ai/utils/constants/sizes.dart';
import 'package:online_shop_ai/utils/device/device_utility.dart';
import 'package:online_shop_ai/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller : controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
      ),
    );
  }
}