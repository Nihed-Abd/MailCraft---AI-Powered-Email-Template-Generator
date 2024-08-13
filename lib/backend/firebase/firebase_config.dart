import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8d-KVW0d_Coun5yR5rCt-uvrHD0vq7dc",
            authDomain: "gemini-competetion-abhvuf.firebaseapp.com",
            projectId: "gemini-competetion-abhvuf",
            storageBucket: "gemini-competetion-abhvuf.appspot.com",
            messagingSenderId: "467550838574",
            appId: "1:467550838574:web:5aa13336915b2b537424bf"));
  } else {
    await Firebase.initializeApp();
  }
}
