import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/map_screen', //base route(HomePage)
  routes:{
    '/map_screen': (context) =>  MapScreen(),
    '/home': (context) => Home(), //homepage
  },
));
