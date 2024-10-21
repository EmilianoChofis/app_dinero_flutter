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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDCmGcvJYwapaS2SnW4Xzf5qiLguZcGJcE',
    appId: '1:168571783682:web:7534383f266cedabfd751b',
    messagingSenderId: '168571783682',
    projectId: 'dinero-d413c',
    authDomain: 'dinero-d413c.firebaseapp.com',
    storageBucket: 'dinero-d413c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBmLpQiGvGDE4GugnLsCm8dGfnTokbZ-o',
    appId: '1:168571783682:android:f17e16b49f42d25dfd751b',
    messagingSenderId: '168571783682',
    projectId: 'dinero-d413c',
    storageBucket: 'dinero-d413c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPTH5uZDlXiy4IYbgtbtmf2Wzfwtp_aFQ',
    appId: '1:168571783682:ios:77617063685df393fd751b',
    messagingSenderId: '168571783682',
    projectId: 'dinero-d413c',
    storageBucket: 'dinero-d413c.appspot.com',
    iosBundleId: 'com.example.appFinanzasFlutter',
  );
}
