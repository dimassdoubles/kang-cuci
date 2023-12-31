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
    apiKey: 'AIzaSyAmEz6Nv7VCJm8qN-tN6kihMD4o_TXLoLg',
    appId: '1:1094285750424:web:157a2d7b0d4270421360ed',
    messagingSenderId: '1094285750424',
    projectId: 'kang-cuci',
    authDomain: 'kang-cuci.firebaseapp.com',
    storageBucket: 'kang-cuci.appspot.com',
    measurementId: 'G-52C0CSB25K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaZwzR-JFAnj3LH3get94ivgc-tpuBicM',
    appId: '1:1094285750424:android:bcfa3f6c09ca42fc1360ed',
    messagingSenderId: '1094285750424',
    projectId: 'kang-cuci',
    storageBucket: 'kang-cuci.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvV3n9fw8VmGR01gA5LBVG-t0ovSF3YwA',
    appId: '1:1094285750424:ios:ad730954b03581561360ed',
    messagingSenderId: '1094285750424',
    projectId: 'kang-cuci',
    storageBucket: 'kang-cuci.appspot.com',
    iosBundleId: 'com.example.kangCuci',
  );
}
