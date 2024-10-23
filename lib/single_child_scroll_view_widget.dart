import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(20.0),
        // physics: ScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        //     physics: FixedExtentScrollPhysics(),
        // reverse: false,
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          Container(
            width: 400,
            color: Colors.limeAccent,
          ),
          Container(
            width: 400,
            color: Colors.pinkAccent,
          )
        ],
            ),
      ),
    ),
  ));
}