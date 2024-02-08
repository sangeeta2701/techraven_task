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
    apiKey: 'AIzaSyDAjyDV8OE2Ip8-GC11NcdlWP0T5s4hosk',
    appId: '1:888545037317:web:8daf8fae8f28a7ac21a06c',
    messagingSenderId: '888545037317',
    projectId: 'techraven-task-29587',
    authDomain: 'techraven-task-29587.firebaseapp.com',
    storageBucket: 'techraven-task-29587.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAr2Brty9aE2C5zmYDsOkattvqZmUIkteo',
    appId: '1:888545037317:android:23ae3cff2e80ff5e21a06c',
    messagingSenderId: '888545037317',
    projectId: 'techraven-task-29587',
    storageBucket: 'techraven-task-29587.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdge-n6fvE-Td46qG2bL0sNYfFNVPAnZU',
    appId: '1:888545037317:ios:82eb2bb3aa61e47921a06c',
    messagingSenderId: '888545037317',
    projectId: 'techraven-task-29587',
    storageBucket: 'techraven-task-29587.appspot.com',
    iosBundleId: 'com.example.assignmentTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdge-n6fvE-Td46qG2bL0sNYfFNVPAnZU',
    appId: '1:888545037317:ios:875c65515b5a33e721a06c',
    messagingSenderId: '888545037317',
    projectId: 'techraven-task-29587',
    storageBucket: 'techraven-task-29587.appspot.com',
    iosBundleId: 'com.example.assignmentTask.RunnerTests',
  );
}