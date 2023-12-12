import 'package:flutter/material.dart';
import 'package:think_chat/screens/Auth/LoginPage.dart';
import 'package:think_chat/screens/HomePage.dart';
import 'package:think_chat/splashpage.dart';

late Size mq;
void main() {
  runApp(const MyApp());
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
