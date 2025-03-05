import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/searh_container.dart';
import 'package:online_shop_ai/common/widgets/layouts/grid_layout.dart';
import 'package:online_shop_ai/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';
import 'package:online_shop_ai/utils/constants/colors.dart';
import 'package:online_shop_ai/utils/constants/enums.dart';
import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_verified.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: (){}, iconColor: null,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxisScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  
                  /// Search bar
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwItems),
    
                  /// Featured Brands
                  TSectionHeading(title: 'Featured Brands', onPressed:(){}),
                  const SizedBox(height: TSizes.spaceBtwItems/1.5),

                  GridLayout(itemCount: 4, mainAxisExtent: 80 ,itemBuilder: (_, index){
                    return GestureDetector(
                      onTap: (){},
                      child: RoundedContainer(
                      padding: const EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// Icon
                          Flexible(
                            child: CircularImage(
                              isNetworkImage: false,
                              image: TImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overLayColor: THelperFunctions.isDarkMode(context)? TColors.white : TColors.black,
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems/2),
                    
                          /// Text
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BrandTitleVerified(title: 'Nike', brandTextSize: TextSizes.large),
                                Text(
                                  '256 products',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelMedium               
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),              
                    );
                  }),
                    ],
              ),
            ),
          ),
        ];
      }, body: Container(),
      ),
    );
  }
}