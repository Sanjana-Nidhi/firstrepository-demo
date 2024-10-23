import 'package:flutter/material.dart';

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
          title: Text('Count: $count'),
        ),
        body: Center(
          child: TextButton(
            child: Text('Increament'),
            onPressed: () {
              count++;
              setState(() {});
            },
          ),
        ));
  }
}
