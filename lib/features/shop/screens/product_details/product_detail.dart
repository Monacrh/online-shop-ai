import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shop_ai/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:online_shop_ai/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:readmore/readmore.dart';
// import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../product_reviews/product_reviews.dart';
import 'widgets/bottom_add_to_cart_widget.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image SLider
            const ProductImageSlider(),
             
            /// 2 - Product details 
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  const RatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  const ProductMetaData(),

                  /// -- Attributes
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Description
                  const TSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for Blue Nike Sleeve less vest. Therea re more things that can be added but i am just practiicng and nothing less',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,),onPressed: () => Get.to(() => const ProductReviewsScreen()),)
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

