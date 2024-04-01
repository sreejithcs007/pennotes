import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3), () {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network("https://lottie.host/2c0a380c-3d52-47d0-a0fd-d9203b5226a8/M3DpJjx9lS.json"),
      ),
    );
  }
}
