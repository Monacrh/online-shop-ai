import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/products.cart/cart/cart_item.dart';
import 'package:online_shop_ai/features/shop/screens/checkout/checkout.dart';

import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        child: CartItem(),
      ),
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}

