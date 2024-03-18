import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myntra/UI/Home.dart';
import 'package:myntra/UI/Pages/Home/Home.dart';

import 'Tab/Tab.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(),
          child: Center(child: Image.asset("assets/images/Myntra.png",fit: BoxFit.cover,)),
        ),
      ),
    );
  }
}