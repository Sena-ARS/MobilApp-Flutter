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
    apiKey: 'AIzaSyCaqj5Ec33w2dITdytth8d1mbomDlS5gWw',
    appId: '1:944685469958:web:08fe0b7c96bf3eca7ace87',
    messagingSenderId: '944685469958',
    projectId: 'uyg-odev',
    authDomain: 'uyg-odev.firebaseapp.com',
    storageBucket: 'uyg-odev.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASDhdK1Uplm8Wb3a5IG12XA81g7Msznao',
    appId: '1:944685469958:android:7211d579258cf2ad7ace87',
    messagingSenderId: '944685469958',
    projectId: 'uyg-odev',
    storageBucket: 'uyg-odev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7sCcXPWMp2a4bs6v9kRxwStgVWIbwZTA',
    appId: '1:944685469958:ios:b8e74527660b502a7ace87',
    messagingSenderId: '944685469958',
    projectId: 'uyg-odev',
    storageBucket: 'uyg-odev.appspot.com',
    iosBundleId: 'com.example.kitapUyg',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7sCcXPWMp2a4bs6v9kRxwStgVWIbwZTA',
    appId: '1:944685469958:ios:f8318b439abf08b47ace87',
    messagingSenderId: '944685469958',
    projectId: 'uyg-odev',
    storageBucket: 'uyg-odev.appspot.com',
    iosBundleId: 'com.example.kitapUyg.RunnerTests',
  );
}
