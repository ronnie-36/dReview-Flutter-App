import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/first_screen.dart';

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
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FirstScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(48),
        padding: EdgeInsets.all(48),
        child: Center(
          child: Image.asset('asset/icons/AppIcon.png'),
        ),
      ),
    );
  }
}
