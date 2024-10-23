import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.orangeAccent,
                  child: Text('Text1')),
              Container(
                color: Colors.lightGreen,
                child: Text('Text2'),
              ),
              Container(
                color: Colors.grey,
                child: Text('Text3'),
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color:Colors.blueAccent,
                  child: Text('Text4'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.indigoAccent,
                  child: Text('Text5')),
              Container(
              color: Colors.lime,
                  child: Text('Text6'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                child: Text('Text7'),
              ),

            ],

          ),
          Row(
            children: [
              Container(
                color: Colors.red,
                child: Text('Text8'),
              )
            ],
          )



        ],
      ),
    ),
  ));
}