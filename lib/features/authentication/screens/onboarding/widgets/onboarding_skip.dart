import 'package:flutter/material.dart';
import 'package:online_shop_ai/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:online_shop_ai/utils/constants/sizes.dart';
import 'package:online_shop_ai/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}