import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(PersonList());
}
class PersonList extends StatelessWidget{
  final List<String> persons=["List1","List2","List3","List4","List5","List6","List7","List8"];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List with icons'),
        ),body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context,index){
          return Card( shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              surfaceTintColor: Colors.white,
              // shadowColor: Colors.white70,
              color:Colors.white,
              child: Container(
                          child: Padding(padding:  EdgeInsets.all(7),
                child: Container(
                   // color: Colors.black12,
                  child: Row(verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: Container(
                            child: Image.asset('images/img_1.png'),
                        height: 30,
                        width: 30,),
                      ),

                      Text(
                        persons[index],
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            print('Calling ${persons[index]}');
                          },

                            icon: Icon(Icons.call),
                          color: Colors.blueGrey,
                          // autofocus: true,
                          ),
                        IconButton(onPressed: (){
                            print('Editing ${persons[index]}');
                          },
                            icon: Icon(Icons.edit),
                          color: Colors.deepOrange,
                        // autofocus: true,
                        ),
                        IconButton(onPressed: (){
                            print('Updating ${persons[index]}');
                          },
                            icon: Icon(Icons.update),
                          color: Colors.red,
                        // autofocus: true,
                        )
                        ],
                      )
                    ],
                            ),
                ),
                          ),
                        )
            );

      }),
      ),
    );
  }
}
