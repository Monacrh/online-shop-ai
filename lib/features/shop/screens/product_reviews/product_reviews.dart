import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/utils/device/device_utility.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              Row(
                children: [
                  Text('4.8', style: Theme.of(context).textTheme.displayLarge),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('5', style: Theme.of(context).textTheme.bodyMedium),
                            Expanded(
                              child: SizedBox(
                                width: TDeviceUtils.getScreenWidth(context)* 0.8,
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  minHeight: 25,
                                  backgroundColor: TColors.grey,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: const AlwaysStoppedAnimation(TColors.primary),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

