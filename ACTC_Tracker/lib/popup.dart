/*
import 'package:flutter/material.dart';
import 'dart:convert';
import 'trial.dart';

import 'package:flutter/services.dart';


class PopupPage extends StatefulWidget{
  @override
  _PopupPageState createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage>{
  List trials =[];
  _loadData() async {
    var jsonString = await rootBundle.loadString('assets/COVID19-data.json');
    setState(() {
      this.trials = json.decode(jsonString);
    });
  }
  @override
  void initState(){
    _loadData();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Trials'),
        centerTitle: true,
        elevation: 0,
      ),//AppBar idk is this necessary
      body: Container(
        itemCount:trials--null?0:trials.length, //count all the items.
        //Like how many times that this Listview.builder can be called(based on the
        //the items counts). like 5 counts, then call listview 5 times to display 5 items
        child: ListView.builder(
          itemBuilder: (BuildContext context, index){
            Trial trial = Trial.fromJson(trials[index]);
            return ListTile(
              leading: CircleAvatar(child: Text(trial.TrialID),),
              title: Text(trial.TrialID),
              subtitle: Text(trial.Publictitle),
            );//ListTile
          },//itembuilder
        ),//ListView
      ),//Container
    ); //Scafford
  }
}
*/