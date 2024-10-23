import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    // debugShowCheckedModeBanner:false,
    home:Scaffold(
      appBar: AppBar(
        title:Text('SampleApp'),
      ), body: Center(
      child: Container(
        color: Colors.orange,
        child: Padding(
          // padding: EdgeInsets.all(20.0),
          // padding: EdgeInsets.symmetric(horizontal: 25.0),
          // padding: EdgeInsets.symmetric(vertical: 25.0),
         // padding: EdgeInsets.only(
         //   top: 20,
         //   bottom: 30,
         // ),
         padding: EdgeInsets.fromLTRB(10, 30, 50, 70),
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    ),
    )
  ),);
}