import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Image.asset(
            'images/img.png',
                height: 500,
          width: 500,
          color: Colors.grey,
          colorBlendMode: BlendMode.darken,
          // fit: BoxFit.contain,


        ),
      ),
    ),
  ));
}