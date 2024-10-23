import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: SizedBox.fromSize(
        size: Size(150, 150),
        child: Card(
          color: Colors.orange,
          child: Center(
            child: Text('Hello'),
          ),
        ),
      )
      // ConstrainedBox(
      //   constraints:
      //   new BoxConstraints(
      //     minHeight: 40.0,
      //     minWidth: 60.0,
      //   ),
      //   child: SizedBox.shrink(
      //     child:Card(
      //   color: Colors.orange,
      //     child: Center(
      //       child: Text('Hello'),
      //     ),

      ),
        // height: 200,
        // ), // width: 200,
      // ),
    // ),
  ));
}