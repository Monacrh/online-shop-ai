import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shop_ai/common/styles/shadows.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shop_ai/common/widgets/images/rounded_image.dart';
import 'package:online_shop_ai/common/widgets/texts/product_price_text.dart';
import 'package:online_shop_ai/common/widgets/texts/product_title_text.dart';
import 'package:online_shop_ai/features/shop/screens/product_details/product_detail.dart';
import 'package:online_shop_ai/utils/constants/colors.dart';
import 'package:online_shop_ai/utils/constants/image_strings.dart';
import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_verified.dart';

class ProductCardVertical extends StatelessWidget{
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // Container with side paddings, color, edged, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.dark : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Dicount Tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),
      
                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black,),
                    ),
                  ),
                  ),
                  /// Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2),
            
            /// Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'Green Nike Air Shoes', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems/2),
                  BrandTitleVerified(title: 'Nike'),
                ],
              ),
            ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const Padding(
                        padding: EdgeInsets.only(left:TSizes.md),
                        child: ProductPriceText(price: '35.0'),
                      ),

                      /// Add To Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          )
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                        ),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

