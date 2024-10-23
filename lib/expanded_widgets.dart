import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            child: Container(
                // padding: EdgeInsets.all(100),
                color: Colors.orangeAccent,
                child: Text('Text1')),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Expanded(
                  child: Container(
                      color: Colors.red,
                      child: Center(
                          child: Text('Text2')))),
              Expanded(child: Container()),
              Expanded(
                  child: Container(
                      color: Colors.blue,
                      child: Center(
                          child: Text('Text3')))),
              Expanded(child: Container()),
            ],
          ),

          Expanded(
            child: Container(color: Colors.lightGreen,
                padding: EdgeInsets.all(20),
                child: Text('Text4')


            ),
          ),


        ],
      ),
    ),
  ));
}
