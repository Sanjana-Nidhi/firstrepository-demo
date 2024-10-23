
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(BreakCountString());

}
class StringHelper{
  String Sentance;
  StringHelper(this.Sentance);
  List<String> breakString(){
    return Sentance.split("");
  }
  int wordCount(){
    List<String> word=breakString();
    return word.length;
    }
    void countChar(){
    List<String> characters= breakString();
    for(String character in characters){
      print(character);
    }
    }
  }
  class BreakCountString extends StatelessWidget{
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Break Count"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                StringHelper stringBreaker=StringHelper("Flutter is amazing");
                stringBreaker.countChar();
                stringBreaker.wordCount();
              }, child: Text("Break"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
                textStyle: TextStyle(fontSize: 20,
                color: Colors.white),
              )),
            ),
            Center(
              child: Padding(
                padding:EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){
                  StringHelper stringHelper=StringHelper("Sanjana");
                  stringHelper.countChar();
                  stringHelper.wordCount();

                }, child: Text("Result"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueGrey,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )
                ),),
              ),
            )
          ],
        ),

      ),
    );
  }
  }
