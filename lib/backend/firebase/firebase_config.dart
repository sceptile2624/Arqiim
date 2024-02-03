import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDNjfyBoWQfdyHhQtRA521AHtI5UuoM30M",
            authDomain: "arqiim-786b9.firebaseapp.com",
            projectId: "arqiim-786b9",
            storageBucket: "arqiim-786b9.appspot.com",
            messagingSenderId: "427355520885",
            appId: "1:427355520885:web:e3dcccb4cc2f8f15addd3c"));
  } else {
    await Firebase.initializeApp();
  }
}
