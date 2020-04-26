
import 'package:flutter/material.dart';
//import 'package:universal_html/html.dart';
import 'dart:html';
/*
class MapScreenWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
        
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
/*
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

Widget MapScreenWeb() {
  String htmlId = "7";

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
    final myLatlng = LatLng(1.3521, 103.8198);

    final mapOptions = MapOptions()
      ..zoom = 10
      ..center = LatLng(1.3521, 103.8198);

    final elem = DivElement()
      ..id = htmlId
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = 'none';

    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = 'Hello World!'
      );

    return elem;
  });

  return HtmlElementView(viewType: htmlId);
}
*/
