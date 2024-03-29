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
    apiKey: 'AIzaSyC75eulh0jMJFxzX3QLNgfaHzLyqdCIrCc',
    appId: '1:146805998092:web:f306559eb47533b328a429',
    messagingSenderId: '146805998092',
    projectId: 'reverse-reversi',
    authDomain: 'reverse-reversi.firebaseapp.com',
    storageBucket: 'reverse-reversi.appspot.com',
    measurementId: 'G-K7V2PVRKZJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-I_j6PWhN_9OBV4C2Zrjz7tGwK-I2VbY',
    appId: '1:146805998092:android:4e688b70dd79104f28a429',
    messagingSenderId: '146805998092',
    projectId: 'reverse-reversi',
    storageBucket: 'reverse-reversi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtpRLGQMvlww1Jx-s60iuOSadblwx8HuM',
    appId: '1:146805998092:ios:dfcd18729dfc467728a429',
    messagingSenderId: '146805998092',
    projectId: 'reverse-reversi',
    storageBucket: 'reverse-reversi.appspot.com',
    iosClientId: '146805998092-i76dpivrkvf03d52hlhgicdi1vbvo8jb.apps.googleusercontent.com',
    iosBundleId: 'com.yusei88.reverseReversi',
  );
}
