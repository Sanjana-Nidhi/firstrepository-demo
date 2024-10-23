import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        child: RichText(

              text: TextSpan(text: 'First',
                  style: TextStyle(fontSize: 20, color: Colors.black),
            children: <TextSpan> [
            TextSpan(
        text: 'Second',
          style: TextStyle(fontSize: 50, color: Colors.yellow)),
        TextSpan(
          text: 'Third',
          style: TextStyle(fontSize: 40, color: Colors.purple)),
          TextSpan(text: 'Default'),
]),

                )

            )
        )
      )



  );
}