import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:online_shop_ai/features/shop/screens/home/widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/searh_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products.cart/products_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer( 
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        /// Heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwSections),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],               
              ),
            ),
            /// Carousel Slider
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const PromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Popular Products
                  GridLayout(itemCount: 2, itemBuilder: (_, index) => const ProductCardVertical(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
