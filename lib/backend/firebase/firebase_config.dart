import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB5vd3WSKVLzTPfvv5lBqi7Egtw_FHxOQQ",
            authDomain: "loginicio.firebaseapp.com",
            projectId: "loginicio",
            storageBucket: "loginicio.appspot.com",
            messagingSenderId: "1008188028017",
            appId: "1:1008188028017:web:0b2037a7fa68fd3e5157d0"));
  } else {
    await Firebase.initializeApp();
  }
}
