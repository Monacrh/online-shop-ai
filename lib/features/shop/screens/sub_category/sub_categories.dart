import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/images/rounded_image.dart';
import 'package:online_shop_ai/common/widgets/products.cart/products_cards/product_card_horizontal.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';
import 'package:online_shop_ai/utils/constants/image_strings.dart';
import 'package:online_shop_ai/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Banner
              const TRoundedImage(width: double.infinity,imageUrl: TImages.promoBanner1,applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections),

              Column(
                children: [
                  /// Sub-Categories
                  TSectionHeading(title: 'Sport Shirts',onPressed: () {},),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}