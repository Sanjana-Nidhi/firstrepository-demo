import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.red,
              child: Text('H')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.limeAccent,
                  child: Text('He')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.lightGreen,
                  child: Text('Li')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.limeAccent,
                  child: Text('Be')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.teal,
                  child: Text('B')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.orangeAccent,
                  child: Text('C')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.lightBlueAccent,
                  child: Text('N')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.orangeAccent,
                  child: Text('O')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.teal,
                  child: Text('F')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.deepPurple,
                  child: Text('Ne')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.lightGreen,
                  child: Text('Na')),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.deepPurple,
                  child: Text('Mg')),
            ],
          ),
          Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.red,
              child: Text('Al'))
        ],
      ),
    ),
  ));
}
