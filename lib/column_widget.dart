import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Column(
        children: [
       Container(child:  Text(
      'First',
          style: TextStyle(fontSize: 30),
        ),
      padding: EdgeInsets.all(40),
      color: Colors.purple),
        Container(child:  Text(
          'Second',
          style: TextStyle(fontSize: 30),
        ),
            padding: EdgeInsets.all(40),
            color: Colors.green),

        Container(child:  Text(
          'Third',
          style: TextStyle(fontSize: 30),
        ),
            padding: EdgeInsets.all(40),
            color: Colors.yellow),

      ],
        /*crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
*/
        mainAxisSize: MainAxisSize.max,
      ),
    )
  ));


}