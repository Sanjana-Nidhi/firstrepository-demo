// import 'dart:html';
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:widgetstutorial/list_view_builder_widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Column(children: [
      Expanded(child: SampleApp())

    ],),
  ));
}
void _addItems(){
  print('Submit!');
}

class SampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample App'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'User',
                border: OutlineInputBorder(),
              ),
            ),
               SizedBox(height: 10,),
               ElevatedButton(
                 onPressed:_addItems,
                 child: Text('Add to List'),
    )]

            ))
            // ),


  ),

    );
  }
}

class CountWidget extends StatefulWidget{
  const CountWidget({super.key});
  @override
  State<StatefulWidget> createState(){
    return _CountState();
  }

 }
class _CountState extends State<CountWidget>{
  int count=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Widget:$count'),
      ),body: Center(
        child: TextButton(
              child: Text('Increment'),
              onPressed: ( ){
                 count ++;
                setState(() {

                });

              },
            ),
          ),
      // )

    // ),
    );
  }
}
