 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        heightFactor: 2,
        widthFactor: 2,
        child: Container(
          height: 100,
            width: 80,
          color: Colors.orange,
        ),
      ),
    ),
  ));
 }