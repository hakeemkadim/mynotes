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
    apiKey: 'AIzaSyAMcvtc2jANxWL6YLX1uXqzsan3U7Olpfk',
    appId: '1:474699804457:web:aebe3ef40e69a54b981138',
    messagingSenderId: '474699804457',
    projectId: 'mynotes-cours-project-1',
    authDomain: 'mynotes-cours-project-1.firebaseapp.com',
    storageBucket: 'mynotes-cours-project-1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKsoD8PRbu8lWRdg3Sf6qTC5GD_ZWbPqc',
    appId: '1:474699804457:android:50ab32a63a4948ee981138',
    messagingSenderId: '474699804457',
    projectId: 'mynotes-cours-project-1',
    storageBucket: 'mynotes-cours-project-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCf4il-LkUh3l3dcpH15XGPQVY9OJjbkdo',
    appId: '1:474699804457:ios:fb1bd53964f5afac981138',
    messagingSenderId: '474699804457',
    projectId: 'mynotes-cours-project-1',
    storageBucket: 'mynotes-cours-project-1.appspot.com',
    iosClientId: '474699804457-3u9redueskg82d6s4i0ib6v8iq50511s.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCf4il-LkUh3l3dcpH15XGPQVY9OJjbkdo',
    appId: '1:474699804457:ios:fb1bd53964f5afac981138',
    messagingSenderId: '474699804457',
    projectId: 'mynotes-cours-project-1',
    storageBucket: 'mynotes-cours-project-1.appspot.com',
    iosClientId: '474699804457-3u9redueskg82d6s4i0ib6v8iq50511s.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );
}