import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:online_shop_ai/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:online_shop_ai/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:online_shop_ai/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:online_shop_ai/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:online_shop_ai/utils/constants/image_strings.dart';
import 'package:online_shop_ai/utils/constants/text_strings.dart';
// import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
    
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
              image: TImages.onBoardingImage1, 
              title: TTexts.onBoardingTitle1, 
              subTitle: TTexts.onBoardingSubTitle1
              ),
              OnBoardingPage(
              image: TImages.onBoardingImage2, 
              title: TTexts.onBoardingTitle2, 
              subTitle: TTexts.onBoardingSubTitle2
              ),
              OnBoardingPage(
              image: TImages.onBoardingImage3, 
              title: TTexts.onBoardingTitle3, 
              subTitle: TTexts.onBoardingSubTitle3
              ),
            ],
          ),
          
          /// Placeholder for Skip Button
          const OnBoardingSkip(),

          /// Placeholder for Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Placeholder for Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}






