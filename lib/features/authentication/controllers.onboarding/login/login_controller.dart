import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:online_shop_ai/data/repositories/authentication_repository.dart';
import 'package:online_shop_ai/utils/constants/image_strings.dart';
import 'package:online_shop_ai/utils/helpers/network_manager.dart';
import 'package:online_shop_ai/utils/popups/full_screen_loader.dart';
import 'package:online_shop_ai/utils/popups/loaders.dart';

class LoginController extends GetxController{

  /// Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// -- Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async{
    try{
      // Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.deliveredInPlaneIllustration);

      //  Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}