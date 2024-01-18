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
    apiKey: 'AIzaSyApl5YfQ4TMQzvkTnNeuQO5YjAyL0t6zfI',
    appId: '1:22206609991:web:251e81b449f8b2ef950f62',
    messagingSenderId: '22206609991',
    projectId: 'hotelbookingsystem-bc242',
    authDomain: 'hotelbookingsystem-bc242.firebaseapp.com',
    storageBucket: 'hotelbookingsystem-bc242.appspot.com',
    measurementId: 'G-HB73PW5PEB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKzpoJ7-SWNGnJhZ4Gi4KDqb7wJCkiiME',
    appId: '1:22206609991:android:2c14f5650e3228a1950f62',
    messagingSenderId: '22206609991',
    projectId: 'hotelbookingsystem-bc242',
    storageBucket: 'hotelbookingsystem-bc242.appspot.com',
  );
}