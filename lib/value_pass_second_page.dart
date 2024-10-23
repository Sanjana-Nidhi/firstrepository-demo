import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetstutorial/page_navigation.dart';
import 'package:widgetstutorial/text_field_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
      title: 'Page1',
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  Page1State createState() {
    return Page1State();
  }
}

class Page1State extends State<Page1> {
  TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter Text',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Page2(value: controller.text)));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.yellow,
              backgroundColor: Colors.teal,
              textStyle: TextStyle(fontSize: 20,
              color: Colors.orangeAccent)
            ),
            child: Text('Next'),
          ),
          // ]
        ]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final String value;

  Page2({required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            'Welcome : $value',
            style: TextStyle(fontSize: 25),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.brown,
            textStyle: TextStyle(fontSize: 20,
                // color: Colors.lime
            )
        ),

          child: Text('Back'),
        )
        // ),
      ]),
    );
  }
}
