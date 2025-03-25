import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/utils/constants/image_strings.dart';
import 'package:online_shop_ai/utils/helpers/network_manager.dart';
import 'package:online_shop_ai/utils/popups/full_screen_loader.dart';
import 'package:online_shop_ai/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
   
  /// Sign Up
  Future<void> signup() async{
    try{
      // Start Loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.deliveredEmailIllustration);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      

      // Form validation
      if(!signupFormKey.currentState!.validate()) return;
      

    } catch (e) {
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally{
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}