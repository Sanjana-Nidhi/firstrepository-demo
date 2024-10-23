import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
   home: Scaffold(
     appBar: AppBar(title: Text("Text Demo"), ),
     body: Center(
     child:Column(
       children: [
         Container(
           child: Text('Text1'),

           //  color: Colors.blue,
           // padding: EdgeInsets.all(50),
         ),

         Container(
           child: Text('Text2'),
           // color: Colors.green,
           // padding: EdgeInsets.all(50),
         ),
         Container(
           child: Text('Text3'),
           // color: Colors.orange,
           // padding: EdgeInsets.all(50),
         )
       ],
     ),
   ),
   ),
  ));
}