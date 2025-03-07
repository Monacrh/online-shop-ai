import 'package:flutter/material.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/appbar/tabbar.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shop_ai/common/widgets/custom_shapes/containers/searh_container.dart';
import 'package:online_shop_ai/common/widgets/layouts/grid_layout.dart';
import 'package:online_shop_ai/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';
import 'package:online_shop_ai/utils/constants/colors.dart';
import 'package:online_shop_ai/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products.cart/products_cards/brand_cart.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build (BuildContext context){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      return const BrandCard(showBorder: false);
                    }),
                      ],
                ),
              ),
      
              /// Tabs
              bottom: const Tabbar(
                tabs:[
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
      
                ]) 
            ),
          ];
        }, body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  RoundedContainer(
                    showBorder: true,
                    borderColor: TColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                    child: Column(
                      children: [
                        const BrandCard(showBorder: false),

                        Row(
                          children: [
                            RoundedContainer(
                              height: 100,
                              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
                              margin: const EdgeInsets.only(right: TSizes.sm),
                              padding: const EdgeInsets.all(TSizes.md),
                              child: const Image(fit: BoxFit.contain, image: AssetImage(TImages.productImage1)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
        ),
      ),
    );
  }
}