import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Gradient'),
      ),
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.indigo,
              ),
              gradient: LinearGradient(begin:Alignment.topCenter,
                  end:Alignment.centerLeft,
                  colors:[
                    Colors.redAccent,
                    Colors.yellowAccent,
                  ],
              ),
              boxShadow: [
                BoxShadow(blurRadius: 50,
                color: Colors.yellow,
                spreadRadius: 20)
              ],
            ),
            // padding: EdgeInsets.all(100),
            alignment: Alignment.center,
            child: Text('Sun',),
          ),


      ),
    ),
  ));
}