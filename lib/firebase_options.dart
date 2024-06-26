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
    apiKey: 'AIzaSyCof9m0vCNjD95RI0iz1oY4o0Y4e6rA4cI',
    appId: '1:968286872384:web:d7e37b64ff109d1f4cd0a5',
    messagingSenderId: '968286872384',
    projectId: 'myportfolio-6a172',
    authDomain: 'myportfolio-6a172.firebaseapp.com',
    storageBucket: 'myportfolio-6a172.appspot.com',
    measurementId: 'G-HXLGLXJJ5S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVk1ND_wpKuRjkaWCNVM87ijxgx1_qqro',
    appId: '1:968286872384:android:5ed024e3b9c344424cd0a5',
    messagingSenderId: '968286872384',
    projectId: 'myportfolio-6a172',
    storageBucket: 'myportfolio-6a172.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDW-chTyNvVitefM2q3N5G8CQFMWWYO4js',
    appId: '1:968286872384:ios:8ec3ae049a65c10c4cd0a5',
    messagingSenderId: '968286872384',
    projectId: 'myportfolio-6a172',
    storageBucket: 'myportfolio-6a172.appspot.com',
    iosBundleId: 'com.high.app.awesomePortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDW-chTyNvVitefM2q3N5G8CQFMWWYO4js',
    appId: '1:968286872384:ios:47aa0902a45e5ba14cd0a5',
    messagingSenderId: '968286872384',
    projectId: 'myportfolio-6a172',
    storageBucket: 'myportfolio-6a172.appspot.com',
    iosBundleId: 'com.high.app.awesomePortfolio.RunnerTests',
  );
}
