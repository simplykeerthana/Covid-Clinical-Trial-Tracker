import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home', //base route(HomePage)
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