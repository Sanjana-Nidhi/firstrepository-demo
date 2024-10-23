import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CountString());
}
class CountString extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'String count example',
      home: StringCounter(),
    );
  }
}
class StringCounter extends StatefulWidget{
  State<StatefulWidget>  createState(){
    return StringCounterState();
  }}
  class StringCounterState extends State<StringCounter>{
  int _StringLength=0;
  String sentance='';
  String _StringBreak='';
  String input='';

  void _StringCountLength(){
    setState(() {
      _StringLength=input.length;
      _StringBreak=sentance.split('') as String;
    });
  }
    @override
  Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(
      title: Text("String Count"),
      ),
        body: Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter String",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  input=value;
                },
              ),
              Padding(
                padding:EdgeInsets.all(20),
                child: ElevatedButton(onPressed: _StringCountLength,
                    child: Text('Find'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    textStyle: TextStyle(fontSize: 20,
                        color: Colors.white),)),
              ),
              SizedBox(
                height: 20),
              Text('length of String:$_StringLength',
              style: TextStyle(
                fontSize: 20
              ),),
            ],
          ),
        ),
      );
  }
  }
