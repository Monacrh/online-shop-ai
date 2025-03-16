import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shop_ai/common/widgets/success_screen/success_screen.dart';
import 'package:online_shop_ai/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:online_shop_ai/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:online_shop_ai/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:online_shop_ai/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:online_shop_ai/navigation_menu.dart';
import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products.cart/cart/coupun_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const CartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Coupun TextField
              const CouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Billing Section
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),


                    /// Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    BillingAddressSection(),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )
          ), 
        child: const Text('Checkout \$256.0')),
      ),
    );
  }
}

