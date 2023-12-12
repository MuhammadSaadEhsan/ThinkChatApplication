import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:think_chat/firebase_options.dart';
import 'package:think_chat/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:think_chat/screens/Auth/LoginPage.dart';
import 'package:think_chat/screens/HomePage.dart';
import 'package:think_chat/splashpage.dart';

late Size mq;
void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (value) {
      _intializefirebase();
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Think Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 1,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

_intializefirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
