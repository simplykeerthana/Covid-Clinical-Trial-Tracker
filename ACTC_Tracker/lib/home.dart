import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
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