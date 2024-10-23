import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(text: 'First',
          style: TextStyle(fontSize: 30, color: Colors.black),
          children: <InlineSpan>[
            TextSpan(text: ' Second',
                style: TextStyle(fontSize: 20,color: Colors.blue)),
          TextSpan(text: ' Third')


              ])
        ),
      ),
    ),
  ));
}