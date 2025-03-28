// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:online_shop_ai/data/repositories/authentication_repository.dart';
import 'package:online_shop_ai/firebase_options.dart';

import 'app.dart';
// import 'firebase_options.dart';


Future<void> main() async {

  // Todo : Add Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // GetX local Storage
  await GetStorage.init();
  
  // Todo : Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // Todo : Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
  );
  // Todo : Initialize Authentication
  
  runApp(const App());
}
