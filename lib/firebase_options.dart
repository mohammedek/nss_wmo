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
    apiKey: 'AIzaSyAJCzqskQcDIxxMbyQpRUfJWyDdDkbyU24',
    appId: '1:819067784650:web:f3476c02dada057a531333',
    messagingSenderId: '819067784650',
    projectId: 'nss-website-wmo',
    authDomain: 'nss-website-wmo.firebaseapp.com',
    databaseURL: 'https://nss-website-wmo-default-rtdb.firebaseio.com',
    storageBucket: 'nss-website-wmo.appspot.com',
    measurementId: 'G-5253W7LSJN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcz4b_qNn5ivXjLdjdIjb8KsXbAzr3Xgo',
    appId: '1:819067784650:android:4ca9588520d3ede2531333',
    messagingSenderId: '819067784650',
    projectId: 'nss-website-wmo',
    databaseURL: 'https://nss-website-wmo-default-rtdb.firebaseio.com',
    storageBucket: 'nss-website-wmo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7qKQ74upBsrxZfXLbwgXxsJqPgj5LVGs',
    appId: '1:819067784650:ios:5c231e883a766404531333',
    messagingSenderId: '819067784650',
    projectId: 'nss-website-wmo',
    databaseURL: 'https://nss-website-wmo-default-rtdb.firebaseio.com',
    storageBucket: 'nss-website-wmo.appspot.com',
    iosClientId: '819067784650-6etog96hlgtgbguk7jri7lha2ihd0ipg.apps.googleusercontent.com',
    iosBundleId: 'com.example.nssWmo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7qKQ74upBsrxZfXLbwgXxsJqPgj5LVGs',
    appId: '1:819067784650:ios:5c231e883a766404531333',
    messagingSenderId: '819067784650',
    projectId: 'nss-website-wmo',
    databaseURL: 'https://nss-website-wmo-default-rtdb.firebaseio.com',
    storageBucket: 'nss-website-wmo.appspot.com',
    iosClientId: '819067784650-6etog96hlgtgbguk7jri7lha2ihd0ipg.apps.googleusercontent.com',
    iosBundleId: 'com.example.nssWmo',
  );
}
