import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Container(
        height: 200,
        width: 200,
        child: Card(
          color: Colors.blue,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50.0)
          // ),
           elevation: 5.0,
          // margin: EdgeInsets.all(10.0),
          shadowColor: Colors.red,
        ),

      ),

    ),
  ));
}