import 'package:flutter/material.dart';
import 'map_screen_mobile.dart';
import 'map_screen_web.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: !kIsWeb ? '/map_screen_mobile' : '/map_screen_web', //base route(HomePage)
      routes:{
        '/map_screen_mobile': (context) =>  MapScreenMobile(),
        '/map_screen_web': (context) => MapScreenWeb(), //homepage
      },
    );
  }

}