import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            color: Colors.purple,
          ),
          Spacer(),
          Container(
            height: 60,
            width: 60,
            color: Colors.yellow,
          ),
          Spacer(flex: 3,),
          Container(
            height: 60,
            width: 60,
            color: Colors.blue,
          ),

        ],
      ),
    ),
  ));
}