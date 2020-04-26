
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Home Screen'),
        centerTitle: true,
        elevation: 0,
      ),//AppBar
      body: SafeArea(
        child: FlatButton.icon(
          onPressed: () {
            Navigator.pushNamed(context,'/map_screen');
          },
          icon: Icon(Icons.edit_location),
          label: Text('Transition'),
        ),
      ),
    );
  }
}
