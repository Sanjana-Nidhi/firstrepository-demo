import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(child: Placeholder()),
            Flexible(child: Placeholder())
          ],
        ),
        // child: Container(
          // height: 300,
          // width: 300,
          // child: Placeholder(
            // color: Colors.green,
            // strokeWidth: 15,
            // fallbackHeight: 300,
            // fallbackWidth: 150,
            
          ),
        
        ),
      // ),
    // ),
  ));

}