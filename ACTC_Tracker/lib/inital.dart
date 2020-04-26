import 'package:flutter/material.dart';
import 'splash_screen.dart';

class Inital extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}