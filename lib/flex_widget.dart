import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ), body: Flex(
      direction: Axis.horizontal,
      children: [

        Container(
          child: Text(
            'First',
            style: TextStyle(fontSize: 20),
          ),
          height: 100,
          width: 200,
          color: Colors.orangeAccent,
          alignment: Alignment.center,
        ),
      Container(
        child: Text(
          'Second',
          style: TextStyle(fontSize: 20),
        ),
        height: 100,
        width: 200,
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,


      )
    ],),
    ),
  ));
}