import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCdA6_FOwglNO2tLfC_UXFOiT-LvN-YGOk",
            authDomain: "timebanks-a503c.firebaseapp.com",
            projectId: "timebanks-a503c",
            storageBucket: "timebanks-a503c.appspot.com",
            messagingSenderId: "832731947805",
            appId: "1:832731947805:web:ad6acc227b0b912525f7f4"));
  } else {
    await Firebase.initializeApp();
  }
}
