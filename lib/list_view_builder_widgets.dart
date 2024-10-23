// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetstutorial/list_tile_widget.dart';
import 'package:widgetstutorial/list_view_widget.dart';

void main (){
  runApp(SampleApp());
}
class SampleApp extends StatefulWidget{
  // final person=List<String>.generate(50, (i) => 'person $i');
  @override
  State<StatefulWidget> createState(){
    return SampleAppState();
  }
}
class SampleAppState extends State<SampleApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample App'),
        ),
        body: ListView.builder(
            // itemCount: person.length,
            itemBuilder: (BuildContext context, int index) {
      return ListTile(
      leading: Icon(Icons.person),
      trailing: Icon(Icons.call),
      title:Text('Person'),
      );
      },
      ),),
    );
  }
}