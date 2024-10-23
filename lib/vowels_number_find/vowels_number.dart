import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VowelNumber extends StatefulWidget{
  State<StatefulWidget> createState(){
    return VowelNumberState();
  }
}

class VowelNumberState extends State<VowelNumber>{
  TextEditingController _controller=TextEditingController();
  String result='';
  void countVowels(){
    String input='abcdefistouwxyz';
    List<String> findVowels=[];
    input=TextEditingController().toString();
    for(int i=0; i<input.length; i++){



    }
    setState(() {});
  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Vowel Number find example'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller:_controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter String",
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            VowelNumberState
          },
              child: Text('Vowels'))
        ],
      ),),
    );
  }
}

