import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Rounded Widget'),
      ),
      body: Center(
        child: Container(
          // height: 100,
          // width: 100,
          decoration: BoxDecoration(
            color: Colors.limeAccent,
            borderRadius: BorderRadius.circular(100)

          ),
          child: Text('Demo'),
        ),
      ),
    ),
  ));
}