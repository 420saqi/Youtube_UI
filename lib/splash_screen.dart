import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube/home_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  const HomeScreen(),));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('splash Screen'),),
      body: Center(
        child: Image.asset(
          'assets/images/youtube_logo.png',
          width: 100.0,
        ),
      ),
    );
  }
}
