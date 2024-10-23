import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
    body: Center(
      child: TextButton(
        //   .icon(
        // icon: Icon(Icons.arrow_back),
        // label: Text('Back'),
        // onPressed: (){},
        child: Text('Back'),
         onPressed: (){},
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurpleAccent,
          textStyle: TextStyle(fontSize: 50,
          color: Colors.blue),

        ),
        // onLongPress:null,
            // (){
          // print('Long Press');


        // },

      ),
    ),
    ),
  ));
}