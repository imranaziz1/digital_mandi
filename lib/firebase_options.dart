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
    apiKey: 'AIzaSyDd7bCmwSfpRRxoUqRVoFoNLsmelh3wQpE',
    appId: '1:262901806623:web:31ecca4917732c2ea4472a',
    messagingSenderId: '262901806623',
    projectId: 'book-my-guide',
    authDomain: 'book-my-guide.firebaseapp.com',
    storageBucket: 'book-my-guide.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6sZYDdygZIkz7byVNSi8tdtnHqJHnxAU',
    appId: '1:262901806623:android:a378a6820cf9b16da4472a',
    messagingSenderId: '262901806623',
    projectId: 'book-my-guide',
    storageBucket: 'book-my-guide.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZAvQRkb6s8eFdHT-wb5vJI2nA5SWa87w',
    appId: '1:262901806623:ios:d65325d7809099b4a4472a',
    messagingSenderId: '262901806623',
    projectId: 'book-my-guide',
    storageBucket: 'book-my-guide.appspot.com',
    iosClientId: '262901806623-5fur4g8r5rtcvago4djem4bf2tvk8crk.apps.googleusercontent.com',
    iosBundleId: 'com.example.digitalMandi',
  );
}
