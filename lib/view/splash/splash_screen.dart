import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tex/view/auth/auth_screen.dart';
import 'package:tex/view/bottom_bar/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (conText) => AuthScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Image.asset(
            "assets/images/AppIcon.png",
            fit: BoxFit.contain,
            width: 180,
            height: 180,
          ),
        ),
      ),
    );
  }
}
