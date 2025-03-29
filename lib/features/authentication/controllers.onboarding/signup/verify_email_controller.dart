import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/common/widgets/success_screen/success_screen.dart';
import 'package:online_shop_ai/data/repositories/authentication_repository.dart';
import 'package:online_shop_ai/utils/constants/text_strings.dart';
import 'package:online_shop_ai/utils/popups/loaders.dart';

import '../../../../utils/constants/image_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send Emial Whenever verify Screen appears & Set Timer for auto redirect.
  @override
  void onInit(){
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  /// Send Email Verification link
  sendEmailVerification() async{
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Oh Snap!', message: 'Please Check your inbox and verify your email.');
    } catch (e){
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
  /// Time to automatically redirect on Email Verification
  setTimerForAutoRedirect(){
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) async{
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if(user?.emailVerified ?? false){
          timer.cancel();
          Get.off(
          () => SuccessScreen(
            image: TImages.staticSuccessIllustration, 
            title: TTexts.yourAccountCreatedTitle, 
            subTitle: TTexts.yourAccountCreatedSubTitle,
             onPressed: () => AuthenticationRepository.instance.screenRedirect()
            ),
          );
        }
      }
    );
  }

  /// Manually Check if Emial Verified
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(
        () => SuccessScreen(
          image: TImages.staticSuccessIllustration, 
          title: TTexts.yourAccountCreatedTitle, 
          subTitle: TTexts.yourAccountCreatedSubTitle, 
          onPressed: () => AuthenticationRepository.instance.screenRedirect()
        ),
      );
    }
  }
}