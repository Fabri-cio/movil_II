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
    apiKey: 'AIzaSyA-EdeFPAZvnTWVZJ4owgOd-B-cNTD0550',
    appId: '1:194077259374:web:bbe537bcd995cca5e4187f',
    messagingSenderId: '194077259374',
    projectId: 'test-flutter-513cf',
    authDomain: 'test-flutter-513cf.firebaseapp.com',
    storageBucket: 'test-flutter-513cf.appspot.com',
    measurementId: 'G-9WNRSPTC8X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU5yK2ZdVyN2q2gnL1WZWFD_fYVmpR9Wg',
    appId: '1:194077259374:android:23a68a9f1bb97b88e4187f',
    messagingSenderId: '194077259374',
    projectId: 'test-flutter-513cf',
    storageBucket: 'test-flutter-513cf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_vgXc6I7-vywhE0D5FFXvzIwdLnmgLJo',
    appId: '1:194077259374:ios:416891e1f72aa818e4187f',
    messagingSenderId: '194077259374',
    projectId: 'test-flutter-513cf',
    storageBucket: 'test-flutter-513cf.appspot.com',
    iosClientId: '194077259374-9m1132o6jtalc8qr712ujh29fisuq3gn.apps.googleusercontent.com',
    iosBundleId: 'com.liw.logincrud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_vgXc6I7-vywhE0D5FFXvzIwdLnmgLJo',
    appId: '1:194077259374:ios:416891e1f72aa818e4187f',
    messagingSenderId: '194077259374',
    projectId: 'test-flutter-513cf',
    storageBucket: 'test-flutter-513cf.appspot.com',
    iosClientId: '194077259374-9m1132o6jtalc8qr712ujh29fisuq3gn.apps.googleusercontent.com',
    iosBundleId: 'com.liw.logincrud',
  );
}