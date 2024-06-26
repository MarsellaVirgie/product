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
        return macos;
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
    apiKey: 'AIzaSyAVCZK5RxEKQ9YlM11FileMmyEQlO8FH_g',
    appId: '1:19834614350:web:e2f23b89074d8d92d5891f',
    messagingSenderId: '19834614350',
    projectId: 'product-db-116fc',
    authDomain: 'product-db-116fc.firebaseapp.com',
    databaseURL: 'https://product-db-116fc-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-116fc.appspot.com',
    measurementId: 'G-NQM4ZSZGES',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgzgrm_LyDgqUKmMFgpILMEAMIHvvAS0I',
    appId: '1:19834614350:android:92ae23b279fd85d9d5891f',
    messagingSenderId: '19834614350',
    projectId: 'product-db-116fc',
    databaseURL: 'https://product-db-116fc-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-116fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBYDJ1AtaFXtvweZPTbhOmIJAbs8V9an6Y',
    appId: '1:19834614350:ios:f79ff8772683966fd5891f',
    messagingSenderId: '19834614350',
    projectId: 'product-db-116fc',
    databaseURL: 'https://product-db-116fc-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-116fc.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBYDJ1AtaFXtvweZPTbhOmIJAbs8V9an6Y',
    appId: '1:19834614350:ios:f79ff8772683966fd5891f',
    messagingSenderId: '19834614350',
    projectId: 'product-db-116fc',
    databaseURL: 'https://product-db-116fc-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-116fc.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVCZK5RxEKQ9YlM11FileMmyEQlO8FH_g',
    appId: '1:19834614350:web:9bd11b9c36616727d5891f',
    messagingSenderId: '19834614350',
    projectId: 'product-db-116fc',
    authDomain: 'product-db-116fc.firebaseapp.com',
    databaseURL: 'https://product-db-116fc-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-116fc.appspot.com',
    measurementId: 'G-SPP2B6QQBT',
  );
}
