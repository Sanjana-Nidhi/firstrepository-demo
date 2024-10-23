import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculator_home.dart';

void main(){
  runApp(Calculator());
}
class Calculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}