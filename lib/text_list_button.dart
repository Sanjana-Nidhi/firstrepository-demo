import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetstutorial/list_tile_widget.dart';

void main(){
  runApp(MaterialApp(
    home: Column(
      children: [
        Expanded(child: TextButton())
      ],
    ),
  ));
}

class TextButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TextButtonState();
  }

}
class TextButtonState extends State<TextButton>{
  var controller=TextEditingController();
  List<String>actions=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Button'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed:() {
                actions.add(controller.text);
                controller.clear();
                setState(() {});

              },
                  child: Text('Submit'),
              style:  ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(20)))),
              SizedBox(height: 30,),
              Expanded(child: ListView.builder(
                  itemCount: actions.length,
                  itemBuilder: (context,index){
                return ListTile(
                title:Text('${actions[index]}'),
                );
              })
              )],
          ),
        ),
      ),
    );
     }
}