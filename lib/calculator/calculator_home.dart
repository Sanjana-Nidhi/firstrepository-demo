import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CalculatorScreenState();
  }
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controller = TextEditingController();
  var inputString = "";
  String operator='';
  var num1=0;
  var num2=0;

  void buttonClicked(String value) {
      if (value == 'AC') {
        inputString = '';
        _controller.clear();
      } else if (value == 'C') {
        inputString = inputString.substring(0, inputString.length - 1);
        _controller.text = inputString;
      } else if (value == "=") {
        inputString="=${calculate}()";
        _controller.text = inputString;
      }else if(inputString.startsWith("=")){
        inputString=value;
      }else{
        inputString+=value;
      }
      setState(() {});
  }

  String calculate() {
    if(operator == '+' || operator == '-' || operator == '*'|| operator == '/'){
      num1=int.parse(inputString);
    }else if(operator == '+'){
      inputString= (num1+num2).toString();
    }else if( operator == '-'){
      inputString= (num1-num2).toString();
    }else if(operator == 'x'){
      print(inputString.replaceAll("x", "*"));
      inputString=(num1*num2).toString();
    }else if(operator == '/'){
      inputString=(num1/num2).toString();
    } return inputString.toString();
    // Parser p = Parser();
    // Expression exp = p.parse(inputString);
    // ContextModel cm = ContextModel();
    // double eval = exp.evaluate(EvaluationType.REAL, cm);
    // return eval.toString();
  }

  Widget buttonPressed(String value) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: OutlinedButton(
          onPressed: () => buttonClicked(value),
          style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 20, color: Colors.white)),
          child: Text(
            '$value',
            style: TextStyle(color: Colors.black),
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      inputString,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.maxFinite,
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    children: [
                      buttonPressed('AC'),
                      buttonPressed('C'),
                      buttonPressed('<'),
                      buttonPressed('+'),
                    ],
                  ),
                  Row(
                    children: [
                      buttonPressed('1'),
                      buttonPressed('2'),
                      buttonPressed('3'),
                      buttonPressed('-'),
                    ],
                  ),
                  Row(
                    children: [
                      buttonPressed('4'),
                      buttonPressed('5'),
                      buttonPressed('6'),
                      buttonPressed('x'),
                    ],
                  ),
                  Row(
                    children: [
                      buttonPressed('7'),
                      buttonPressed('8'),
                      buttonPressed('9'),
                      buttonPressed('/'),
                    ],
                  ),
                  Row(
                    children: [
                      buttonPressed('00'),
                      buttonPressed('0'),
                      buttonPressed('.'),
                      buttonPressed('='),
                    ],
                  ),
                ],
              ),
            )

            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {
            //
            //
            //             });
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //               child: Text('C',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('(',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                 foregroundColor: Colors.white,
            //                 backgroundColor: Colors.orange,
            //                 textStyle: TextStyle(
            //                   fontSize: 20,
            //                   color: Colors.white,
            //                 )
            //               ),
            //               child: Text(')',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style:TextButton.styleFrom(
            //                 foregroundColor: Colors.white,
            //                 backgroundColor: Colors.orange,
            //                 textStyle: TextStyle(
            //                   fontSize: 20,
            //                   color: Colors.black12
            //                 )
            //               ),
            //               child: Text('/',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       )],
            //   ),
            // ) ,
            // Padding(
            //   padding:  EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('1',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('2',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //                 setState(() {});
            //                 },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('3',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //                 setState(() {});
            //               },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('*',
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       )],
            //   ),
            // ) ,
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('4',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('5',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('6',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('-',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       )],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(
            //               onPressed: (){
            //                 setState(() {});
            //               },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('7',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('8',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(
            //               onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('9',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('+',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       )],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('00',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.blueGrey,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('0',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('.',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           padding: EdgeInsets.only(left: 10,),
            //           child: ElevatedButton(onPressed: (){
            //             setState(() {});
            //           },
            //               style: TextButton.styleFrom(
            //                   foregroundColor: Colors.white,
            //                   backgroundColor: Colors.orange,
            //                   textStyle: TextStyle(fontSize: 20,
            //                       color: Colors.black12)
            //               ),
            //
            //               child: Text('=',
            //           style: TextStyle(
            //             color: Colors.black,
            //           ))),
            //         ),
            //       )],
            //   ),
            // )
          ],
        ));
  }
}
