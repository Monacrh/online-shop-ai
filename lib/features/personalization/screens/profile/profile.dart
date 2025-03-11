import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shop_ai/common/widgets/appbar/appbar.dart';
import 'package:online_shop_ai/common/widgets/images/circular_image.dart';
import 'package:online_shop_ai/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children:[
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(image: TImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('change Profile Picture')),
                ],
              ),
            ), 
            /// Details
            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Heading Profile Info
            const TSectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems),

            ProfileMenu(title: 'Name', value: 'Bryan Dhaniel', onPressed: () {}),
            ProfileMenu(title: 'Username', value: 'bryandhaniel', onPressed: () {}),
            

            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Heading Personal Info
            const TSectionHeading(title: 'Personal Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            ProfileMenu(title: 'User ID', value: '111104',icon: Iconsax.copy, onPressed: () {}),
            ProfileMenu(title: 'E-mail', value: 'bry@gmail.com', onPressed: () {}),
            ProfileMenu(title: 'Phone Number', value: '+62123456789', onPressed: () {}),
            ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
            ProfileMenu(title: 'Date of Birth', value: '11 Nov 2004', onPressed: () {}),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Close Account', style: TextStyle(color: Colors.red),),
              ),
            )
          ],
        ) , 
        ),
      ),
    );
  }
}

