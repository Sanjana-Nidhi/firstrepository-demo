import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VowelNumber extends StatefulWidget{
  State<StatefulWidget> createState(){
    return VowelNumberState();
  }
}

class VowelNumberState extends State<VowelNumber>{
  TextEditingController _controller=TextEditingController();
  String userInput='';

  void countVowels(String input){
    var num=_controller.text.length;
    Var result="";
    for(int i=0; i<num.length; i++){
      if(input[i] == 'a'|| input[i] == 'e' || input[i] == 'i' || input[i] == 'o' ||
          input[i] == 'u'||
      input[i] == 'A' || input[i] == 'E' || input[i] == 'I'|| input[i] == 'O'|| input[i] == 'U'){
        result ++;

      }
    }
    userInput= result;
    userInput=_controller.text;
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

          },
              child: Text('Vowels'))
        ],
      ),),
    );
  }
}

