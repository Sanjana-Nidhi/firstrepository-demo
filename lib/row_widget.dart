import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  home: Scaffold(
      appBar:AppBar(
      title: Text('SampleApp'),
  ),body: Row(
     crossAxisAlignment: CrossAxisAlignment.stretch,
    textDirection: TextDirection.rtl,
  mainAxisAlignment: MainAxisAlignment.spaceAround,

  children: [
    Container(
  padding: EdgeInsets.all(30),
  child: Text('First'),
  color: Colors.orange,
  ),
  Container(
  padding: EdgeInsets.all(30),
  child: Text('Second'),
  color: Colors.lightBlueAccent,),
  Container(
  padding: EdgeInsets.all(30),
  child: Text('Third'),
  color: Colors.yellow,),

   ],
   ),
  )));
}