import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: CountWidget(),
  ));
}
class CountWidget extends StatefulWidget {
  const CountWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CountState();
  }
}

class _CountState extends State<CountWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap:() {
                print('object');
              },
              splashColor: Colors.redAccent,
              highlightColor: Colors.blue,
              radius: 20,
              child: Text('Count: $count',
                style: TextStyle(fontSize: 30),
              )),
        ),
        body: Center(
          child: TextButton(
            child: InkWell(
                onTap: (){
                  print('object');
                },
                highlightColor: Colors.limeAccent,
                child: Text('Add')),
            onPressed: () {
              count++;
              setState(() {});

            },
          ),
        ));
  }
}
