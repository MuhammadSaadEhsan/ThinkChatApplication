import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:think_chat/main.dart';
import 'package:think_chat/screens/Auth/LoginPage.dart';
import 'package:think_chat/screens/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    });
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Welcome to Think Chat'),
      // ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 15),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_comment_rounded),
          backgroundColor: Colors.pink,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              top: mq.height * 0.11,
              width: mq.width * 0.5,
              left: mq.width * .25,
              child: Image.asset(
                "images/logo.png",
              )),
          Positioned(
              bottom: mq.height * 0.185,
              width: mq.width,
              left: mq.width * 0.5,
              // height: mq.width * 0.128,
              // left: mq.width * .1,
              child: Text(
                "Made by Code Wave😍",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ))
        ],
      ),
    );
  }
}
