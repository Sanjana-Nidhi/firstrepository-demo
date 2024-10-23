import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(EvenNum());
}
class EvenNum extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Even Num Example',
      home: StringEven (),
    );
  }
}

class StringEven extends StatefulWidget{
  State<StatefulWidget> createState(){
    return StringEvenState();
  }
}
class StringEvenState extends State<StringEven>{
  TextEditingController textEditingController=TextEditingController();
  var finalResult="";
  void _evenSum(){
   var num=textEditingController.text.length;
    var result="";
    for(int i=1; i<=num; i++){
      if(i % 2 == 0){
        if(result.isNotEmpty){  
          result +=',';
        }
        result += i.toString();
      }
    }
    finalResult=result;
    setState(() {});
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Even Num'),
      ), body: Padding(
        padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: "Enter Number",
            border: OutlineInputBorder(),
          ),
        ),Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(onPressed: _evenSum,

              child: Text('Find'),),
        ),
        Text('Even num: $finalResult',
        style: TextStyle(fontSize: 20),),

      ],
    ),

    ),
    );
  }
}