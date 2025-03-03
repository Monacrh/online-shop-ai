import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/common/styles/spacing_styles.dart';
import 'package:online_shop_ai/common/widgets/form_divider.dart';
import 'package:online_shop_ai/common/widgets/social_buttons.dart';
import 'package:online_shop_ai/features/authentication/screens/login/widgets/login_form.dart';
import 'package:online_shop_ai/features/authentication/screens/login/widgets/login_header.dart';
import 'package:online_shop_ai/utils/constants/sizes.dart';
import 'package:online_shop_ai/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override 
  Widget build(BuildContext context){
    // final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & sub-title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),
              
              /// Divider   
              // TFormDivider(dark: dark),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer       
              const TSocialButtons()
            ],
          ),
        ),
      )
    );
  }
}






