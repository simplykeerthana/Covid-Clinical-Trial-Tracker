import 'package:flutter/material.dart';

/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
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
*/

import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/map_screen', //base route(HomePage)
  routes:{
    '/map_screen': (context) =>  MapScreen(title:'ACTC_TRACKER'),
    '/home': (context) => Home(), //homepage
  },
));


/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACTC-Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapScreen(title:'ACTC_TRACKER'),  
    );
  }
}*/
/*
void main() => runApp(MyApp());
}*/
/*
void main() => runApp(MyApp());
}*/
/*
void main() => runApp(MyApp());
}*/
/*
void main() => runApp(MyApp());
}*/
/*
void main() => runApp(MyApp());
}*/
/*
void main() => runApp(MyApp());
*/ 