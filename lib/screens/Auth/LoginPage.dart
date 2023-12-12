import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:think_chat/main.dart';
import 'package:think_chat/screens/HomePage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        _isAnimate = true;
        print("Animation is Starting");
      });
    });
  }

  Widget build(BuildContext context) {
    // mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Think Chat'),
      ),
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
          AnimatedPositioned(
              top: mq.height * 0.15,
              width: mq.width * 0.5,
              left: _isAnimate ? mq.width * .25 : -mq.width * 0.5,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                "images/logo.png",
              )),
          Positioned(
              bottom: mq.height * 0.185,
              width: mq.width * 0.8,
              height: mq.width * 0.128,
              left: mq.width * .1,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                },
                icon: Image.asset(
                  "images/google.png",
                  height: mq.height * 0.035,
                ),
                label: Text(
                  "Login with Google",
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              )),
        ],
      ),
    );
  }
}
