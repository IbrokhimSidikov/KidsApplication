// // firebase_options.dart

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// // DefaultFirebaseOptions class contains configuration for different platforms (Web, Android, iOS, macOS).
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'YOUR_ANDROID_API_KEY',
//     appId: 'YOUR_ANDROID_APP_ID',
//     messagingSenderId: 'YOUR_ANDROID_MESSAGING_SENDER_ID',
//     projectId: 'YOUR_ANDROID_PROJECT_ID',
//     storageBucket: 'YOUR_ANDROID_STORAGE_BUCKET',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'YOUR_IOS_API_KEY',
//     appId: 'YOUR_IOS_APP_ID',
//     messagingSenderId: 'YOUR_IOS_MESSAGING_SENDER_ID',
//     projectId: 'YOUR_IOS_PROJECT_ID',
//     storageBucket: 'YOUR_IOS_STORAGE_BUCKET',
//     iosClientId: 'YOUR_IOS_CLIENT_ID',
//     iosBundleId: 'YOUR_IOS_BUNDLE_ID',
//   );
// }