import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/icons/circular_icon.dart';
import 'package:online_shop_ai/common/widgets/layouts/grid_layout.dart';
import 'package:online_shop_ai/common/widgets/products.cart/products_cards/product_card_vertical.dart';
import 'package:online_shop_ai/features/shop/screens/home/home.dart';

import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            GridLayout(itemCount: 6, itemBuilder: (_, index) => const ProductCardVertical())
          ],
        ),
      ),
    );
  }
}