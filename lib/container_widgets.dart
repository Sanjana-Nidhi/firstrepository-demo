import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 20),
          ),
         // color: Colors.brown,
          height: 200,
            width: 200,
          alignment: Alignment.center,
          // padding: EdgeInsets.all(20.0),
          //  padding: EdgeInsets.fromLTRB(20, 30, 40, 50)
          //  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          padding: EdgeInsets.only(top: 20, bottom: 30),
          // margin: EdgeInsets.all(30),
          // constraints: BoxConstraints.expand(),
          // constraints: BoxConstraints(maxHeight: 100, maxWidth: 150),
          // transform: Matrix4.rotationZ(25.0),
          // transform: Matrix4.skewX(3.0)..rotateZ(20.0),
          decoration: BoxDecoration(
            color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                  style: BorderStyle.solid,

                ),
          /*  border: Border(
              top: BorderSide(color: Colors.black, width: 2),
              bottom: BorderSide(color: Colors.black, width: 5),
              left: BorderSide(color: Colors.yellow,width: 4),
              right: BorderSide(color: Colors.yellow,width: 6),
              // border:BorderRadius.All(Radius.circular(30.0),)
            )*/
          /*  borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )*/
            /*boxShadow: [
              BoxShadow(blurRadius: 15.0,
                color: Colors.pink,
                // spreadRadius: 20.0,
                offset: Offset(15.0, 5.0),

              ),
            ]*/
            // shape: BoxShape.circle,
          // ),
          gradient: LinearGradient(
            begin: Alignment.centerRight, end: Alignment.centerLeft,
            colors: [Colors.yellow, Colors.lightGreen, Colors.pink],
          )

          ),

        ),

      ),
    ),
  ));
}