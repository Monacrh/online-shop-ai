// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDWtAnIgGE04rLOYSyj_AXWw0aGao-m9qg',
    appId: '1:1024485568233:web:837328e2076715fea14a78',
    messagingSenderId: '1024485568233',
    projectId: 'online-shop-bba06',
    authDomain: 'online-shop-bba06.firebaseapp.com',
    storageBucket: 'online-shop-bba06.firebasestorage.app',
    measurementId: 'G-DHZRHBXDZX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQgqYiFrG_0rLuIo3xgKAZQeaXieT8bUQ',
    appId: '1:1024485568233:android:9c0806fd6d705f43a14a78',
    messagingSenderId: '1024485568233',
    projectId: 'online-shop-bba06',
    storageBucket: 'online-shop-bba06.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4ykX5L8RiS6ngoZtKFEEmaTYbxnUdegM',
    appId: '1:1024485568233:ios:220be66bac94defda14a78',
    messagingSenderId: '1024485568233',
    projectId: 'online-shop-bba06',
    storageBucket: 'online-shop-bba06.firebasestorage.app',
    iosBundleId: 'com.example.onlineShopAi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDWtAnIgGE04rLOYSyj_AXWw0aGao-m9qg',
    appId: '1:1024485568233:web:c9b7847d9a36bc2da14a78',
    messagingSenderId: '1024485568233',
    projectId: 'online-shop-bba06',
    authDomain: 'online-shop-bba06.firebaseapp.com',
    storageBucket: 'online-shop-bba06.firebasestorage.app',
    measurementId: 'G-Y2MMBEF0TE',
  );
}
