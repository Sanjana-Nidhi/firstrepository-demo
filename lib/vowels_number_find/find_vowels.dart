import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetstutorial/vowels_number_find/vowels_number.dart';

void main(){
  runApp(FindVowels());
}
class FindVowels extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Vowels Example',
      home: VowelNumber(),
    );
  }
}