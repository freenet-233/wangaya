// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyAAU4a2Nt6ngzuL6gBppvKVri5_3N0Ae2c',
    appId: '1:135651011928:web:e56af67f5af91ad976892d',
    messagingSenderId: '135651011928',
    projectId: 'wangaya-65348',
    authDomain: 'wangaya-65348.firebaseapp.com',
    databaseURL: 'https://wangaya-65348-default-rtdb.firebaseio.com',
    storageBucket: 'wangaya-65348.appspot.com',
    measurementId: 'G-WQEH16PDJ4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAX_cmUY1jE784VVdbrrc9YsoAU_xcC-Dg',
    appId: '1:135651011928:android:315f0282521ea66b76892d',
    messagingSenderId: '135651011928',
    projectId: 'wangaya-65348',
    databaseURL: 'https://wangaya-65348-default-rtdb.firebaseio.com',
    storageBucket: 'wangaya-65348.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOyoJldCBlnUr4JFbVVORe2RiPrmolbVk',
    appId: '1:135651011928:ios:30b49646b5dfd88676892d',
    messagingSenderId: '135651011928',
    projectId: 'wangaya-65348',
    databaseURL: 'https://wangaya-65348-default-rtdb.firebaseio.com',
    storageBucket: 'wangaya-65348.appspot.com',
    iosBundleId: 'com.example.wangaya',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOyoJldCBlnUr4JFbVVORe2RiPrmolbVk',
    appId: '1:135651011928:ios:b4feb39558e1ddf976892d',
    messagingSenderId: '135651011928',
    projectId: 'wangaya-65348',
    databaseURL: 'https://wangaya-65348-default-rtdb.firebaseio.com',
    storageBucket: 'wangaya-65348.appspot.com',
    iosBundleId: 'com.example.wangaya.RunnerTests',
  );
}