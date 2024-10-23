import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        // toolbarOpacity: 15,
        // elevation: 15,
        // shadowColor: Colors.red,
        // title: Text('Hello'),
        // textTheme:TextTheme(
          //       headline6: TextStyle(
          //           color: Colors.yellow,
          //       fontSize: 30)
          //   //     )
         backgroundColor: Colors.lime,
        actions: [Icon(Icons.more_vert)],
        actionsIconTheme: IconThemeData(
          color: Colors.pink,
          size: 30,
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Name'),
          color: Colors.orange,
          padding: EdgeInsets.all(25),
        ),
      ),
    ),
  ));
}
