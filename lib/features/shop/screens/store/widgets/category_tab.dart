import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/layouts/grid_layout.dart';
import 'package:online_shop_ai/common/widgets/products.cart/products_cards/product_card_vertical.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const BrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage3]),
            // const BrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage3]),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            /// Products
            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
      ],
    );
  }
}