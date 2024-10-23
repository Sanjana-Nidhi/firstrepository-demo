import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Stack(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(
                      color: Colors.limeAccent,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.redAccent,
                          Colors.amber,
                        ]),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 100,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50, top: 50),
                child: smallCircle(Alignment.topLeft)),
            smallCircle(Alignment.topCenter),
            Padding(
                padding: const EdgeInsets.only(right: 50, top: 50),
                child: smallCircle(Alignment.topRight)),
            smallCircle(Alignment.centerLeft),
            smallCircle(Alignment.centerRight),
            Padding(
                padding: const EdgeInsets.only(left: 50, bottom: 50),
                child: smallCircle(Alignment.bottomLeft)),
            smallCircle(Alignment.bottomCenter),
            Padding(
                padding: const EdgeInsets.only(right: 50, bottom: 50),
                child: smallCircle(Alignment.bottomRight)),
          ]),
        ),
      ),
    ),
  ));
}

smallCircle(AlignmentGeometry alignment) {
  return Align(
    alignment: alignment,
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.deepOrangeAccent,
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.centerLeft,
            colors: [
              Colors.redAccent,
              Colors.amber,
            ]),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.yellow,
          )
        ],
      ),
    ),
  );
}
