
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'locations.dart' as locations;
import  'trial.dart';
//import 'popup.dart' as trial_locations;


class MapScreenMobile extends StatefulWidget {
  const MapScreenMobile({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MapScreenState createState() => _MapScreenState();
}

class  _MapScreenState extends State<MapScreenMobile> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    List<Trial> trials = await locations.getAllTrials();
    setState(() {
      _markers.clear();
      for (final trial in trials) {
        final marker = Marker(
          markerId: MarkerId(trial.Publictitle),
          position: LatLng(trial.latitude, trial.longitude),
          infoWindow: InfoWindow(
            title: trial.Publictitle,
            snippet: trial.ContactAddress,
          ),
        );
        _markers[trial.Publictitle] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Google Office Locations'),
            backgroundColor: Colors.green[700],
          ),
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: const LatLng(0, 0),
              zoom: 2,
            ),
            markers: _markers.values.toSet(),
          ),
        ),
      );
}

