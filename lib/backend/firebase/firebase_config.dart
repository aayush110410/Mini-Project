import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPcG2nosGIO_Fmw8Vx-tFQ8EYHMTVZrTY",
            authDomain: "repair-i-q-wtclej.firebaseapp.com",
            projectId: "repair-i-q-wtclej",
            storageBucket: "repair-i-q-wtclej.firebasestorage.app",
            messagingSenderId: "773085126616",
            appId: "1:773085126616:web:b993a922ea81cbfed2dcad"));
  } else {
    await Firebase.initializeApp();
  }
}
