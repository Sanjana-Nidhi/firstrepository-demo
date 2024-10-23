import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ReversedApp());
}
class ReversedApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Reversed String Example',
      home: ReversedString(),
    );
  }
}
class ReversedString extends StatefulWidget{
  State<StatefulWidget> createState(){
    return ReversedStringState ();
  }
}

class ReversedStringState extends State<ReversedString>{
  TextEditingController _controller=TextEditingController();
  String input='Flutter is amazing';
  String reversedWords(String input){
    List<String> words=input.split('');
    List<String> reverseWords=words.reversed.toList();
    String reverseString=reverseWords.join('');
    return reverseString;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse String'),
      ),body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              labelText: 'Enter String',
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            reversedWords('');
          });
        }, child: Text('Reverse')),
        Text('String Reverse is : $reversedWords(input)')
      ],
    ),),
    );
  }
}