import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'splash_screen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home', //base route(HomePage)
  routes:{
    '/map_screen': (context) =>  MapScreen(),
    '/home': (context) => SplashScreen(), //homepage
  },
));