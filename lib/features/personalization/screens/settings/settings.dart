import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';
import 'package:online_shop_ai/features/personalization/screens/address/address.dart';
import 'package:online_shop_ai/features/personalization/screens/profile/profile.dart';
import 'package:online_shop_ai/utils/constants/colors.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          /// Header
          TPrimaryHeaderContainer(
            child: Column(
                children: [
                /// AppBar
                TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                /// User Profile Card
                UserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections),
                ]
            ),
          ),
          /// Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Account Settings
                const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems),

                SettingsMenuTile(icon:Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', onTap: () => Get.to(() => const UserAddressScreen()),),
                const SettingsMenuTile(icon:Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout'),
                const SettingsMenuTile(icon:Iconsax.bag_tick, title: 'My Orders', subtitle: 'In progress and Completed Orders'),
                const SettingsMenuTile(icon:Iconsax.bank, title: 'Bank Account', subtitle: 'withdraw balance to registered bank account'),
                const SettingsMenuTile(icon:Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the dicounted coupons'),
                const SettingsMenuTile(icon:Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                const SettingsMenuTile(icon:Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and conntected account'),
                
                /// App Settings
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(title: 'App Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const SettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase'),
                SettingsMenuTile(
                  icon: Iconsax.location, 
                  title: 'Geolocation', 
                  subtitle: 'Set recommendation based on location', 
                  trailing: Switch(value: true, onChanged: (value){})
                ),
                 SettingsMenuTile(
                  icon: Iconsax.security_user, 
                  title: 'Safe MOde', 
                  subtitle: 'Search result is safe for all ages', 
                  trailing: Switch(value: false, onChanged: (value){})
                ),
                 SettingsMenuTile(
                  icon: Iconsax.image, 
                  title: 'HD image Quality', 
                  subtitle: 'Set image quality to be seen', 
                  trailing: Switch(value: false, onChanged: (value){})
                ),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}

