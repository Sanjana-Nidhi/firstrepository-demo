import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleAPP'),
      ),
      body: Column(
        children: [
          // Expanded(child:
        Flexible

          (child:
      Container(
            child: Text(
              'First',
          style:TextStyle(fontSize: 20),
      ),
            padding:EdgeInsets.all(30),
            color: Colors.orange,
            alignment: Alignment.center,
            width: 500,
          ),),
      // Expanded(child:
      Flexible
        (fit:FlexFit.tight,
          child:
      Container(
        child: Text(
          'Second',
        style:TextStyle(fontSize: 20),
      ),
        padding:EdgeInsets.all(30),
        color: Colors.lightGreenAccent,
        alignment: Alignment.center,
        width: 200,

    ),),
          // Expanded(child:
    Flexible(child:

          Container(
            child: Text(
              'Third',
            style:TextStyle(fontSize: 20),
          ),
            padding:EdgeInsets.all(30),
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            width: 250,

          ),),


        ],
      ),
    ),
  ));

}