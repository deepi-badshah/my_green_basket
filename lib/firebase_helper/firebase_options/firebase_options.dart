import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:283466351178:ios:11f94d8546d09dc5939cb3',
        apiKey: 'AIzaSyDZMrO_9KcpEJc8yMiIL4oYEi9a5gFOzHI',
        projectId: 'e-commerce-6455a',
        messagingSenderId: '283466351178	',
        iosBundleId: 'com.example.youtubeEcommerce',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:1007792277300:android:6cb94ade3880f82ffe4761',
        apiKey: 'AIzaSyCZ2nmM8Fl0Tt-COFHN-ak6Mx6d2Ql5nW0',
        projectId: 'mygreenbasket-738ef',
        messagingSenderId: '1007792277300',
      );
    }
  }
}
