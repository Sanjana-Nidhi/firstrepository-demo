import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body:Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text1'),
                padding: EdgeInsets.all(50),
                color: Colors.pinkAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text2'),
                padding: EdgeInsets.all(50),
                color: Colors.orangeAccent),
              ),

            ],

          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text3'),
                  padding: EdgeInsets.all(50),
                  color: Colors.limeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text4'),
                padding: EdgeInsets.all(50),
                color: Colors.blueAccent,),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text5'),
                padding: EdgeInsets.all(50),
                color: Colors.lightGreenAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(child: Text('Text6'),
                padding: EdgeInsets.all(50),
                color: Colors.indigoAccent),
              )
            ],
          )

        ],
      )
    ),
  ));
}