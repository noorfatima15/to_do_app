import 'dart:async';

import 'package:flutter/material.dart';

import 'package:to_do_app/widgets/tab_navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavigationPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover),
          // gradient: LinearGradient(
          //     stops: [
          //       0.1,
          //       0.4,
          //       0.6,
          //       0.9,
          //     ],
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     colors: [
          //       Colors.yellow,
          //       Colors.red,
          //       Colors.deepOrange,
          //       Colors.orangeAccent,
          //     ])
        ),
        child: Column(
          children: [
            SizedBox(height: 350),
            Text(
              'Todo App',
              style: TextStyle(
                  fontSize: 40,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: 'Shrikhand'),
            ),
            SizedBox(height: 100),
            CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
