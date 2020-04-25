import 'package:flutter/material.dart';


class PopupPage extends StatefulWidget{
  @override
  _PopupPageState createstate() => _PopupPageState();
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
    return Scafford(
      appBar:  AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text('Trials'),
        centerTitle: True,
        elevation: 0,
      ),//AppBar idk is this necessary
      body: Container(
        itemCount: trials--null?0:trials.length, //count all the items.
        child: ListView.builder(
          itemBuilder: (BuildContext context,index){
            Trial trail = Trail.fromJson(trials[index]);
            return ListTile(
              leading: CircleAvatar(child: Text(trials.TrialID[0]),),
              title: Text(trials.TrialID),
              subtitle: Text(trails.Publictitle),
            );//ListTile
          },//itembuilder
        ),//ListView
      ),//Container
    ); //Scafford
  }

}