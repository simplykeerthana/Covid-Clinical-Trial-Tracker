import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MapScreenState();
}



class _MapScreenState extends State<MapScreen>{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 35, 38, 100),
      body: _buildMap()
      appBar: _buildAppBar(),
    ); //Scaffold
  }

  AppBar _buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Map".toUpperCase(),
        style: TextStyle(fontSize: 19.0, color: Colors.black87),
      ),
    ); //AppBar
  }

  LatLng _center = LatLng(40.762681, -73.832611)

  FlutterMap _buildMap()
  {
    return FlutterMap(
      options: new MapOptions(
        minZoom: 15.0,
        center: _center,
        interactive: true,
      ),

      
    )
  }

}