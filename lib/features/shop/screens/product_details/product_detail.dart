import 'package:flutter/material.dart';
import 'package:online_shop_ai/features/shop/screens/product_details/widgets/product_meta_data.dart';
// import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image SLider
            ProductImageSlider(),
             
            /// 2 - Product details 
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  RatingAndShare(),
                  /// - Price, Title, Stock & Brand
                  ProductMetaData(),
                  /// -- Attributes
                  /// -- Checkout Button
                  /// -- Description
                  /// -- Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

