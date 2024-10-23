import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}
class DemoApp extends StatefulWidget{
@override
State <StatefulWidget> createState() {
  return DemoAppState();
}
}
class DemoAppState extends State<DemoApp>{
  @override
  Widget build( BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DemoApp'),
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          physics: NeverScrollableScrollPhysics(),
          reverse: true,
          scrollDirection: Axis.horizontal,
          children:[
            Container(
              width: 150,
              height: 150,
              child: Text(' ravi'),
              color: Colors.grey,

            ),
            Container(
              width: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.yellowAccent,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.indigoAccent,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.limeAccent,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.redAccent,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.teal,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.blueGrey,
            ),Container(
              width: 150,
              child: Text(' '),
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}