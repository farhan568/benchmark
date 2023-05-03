import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgcxcDgtvPr8mjqy18iAasVJqzZtSyUxM",
            authDomain: "esric-d79ba.firebaseapp.com",
            projectId: "esric-d79ba",
            storageBucket: "esric-d79ba.appspot.com",
            messagingSenderId: "2728196812",
            appId: "1:2728196812:web:d9e1c93e5db2a18f9ce069",
            measurementId: "G-2H7B7406R7"));
  } else {
    await Firebase.initializeApp();
  }
}
