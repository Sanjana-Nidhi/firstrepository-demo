import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        heightFactor: 2,
        widthFactor: 3,
        child: Container(
          color: Colors.lightBlueAccent,
          height: 80,
          width: 100,
        ),
      ),
    ),
  ));
}