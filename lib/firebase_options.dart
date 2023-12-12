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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDtjEIPwL5n0rTWkBvzEojzmz56o8qnGoY',
    appId: '1:499824130284:web:3475081a7b0c6732018dc9',
    messagingSenderId: '499824130284',
    projectId: 'thinkchat-f7e4e',
    authDomain: 'thinkchat-f7e4e.firebaseapp.com',
    storageBucket: 'thinkchat-f7e4e.appspot.com',
    measurementId: 'G-EYTFV885P3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMwOTpwbOgNK5sQLC3bEqwX4TQTu8ElVU',
    appId: '1:499824130284:android:d10c410c91779754018dc9',
    messagingSenderId: '499824130284',
    projectId: 'thinkchat-f7e4e',
    storageBucket: 'thinkchat-f7e4e.appspot.com',
  );
}
