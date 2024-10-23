import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState () => _MyAppState();


}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          // child: (
            child: TextField(
               decoration: InputDecoration(
              //    border: InputBorder.none,
              //    labelText: "First Name",
              //    keyboardType:TextInputType.number,
              //   autofocus:true,
              // enabled: false,
              // readOnly: true,
    // filled: true,
    // fillColor: Colors.orangeAccent,
    // border: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(30),
                 hintText: 'email',
                 // hintStyle: TextStyle(
                 //   color: Colors.redAccent,
                 //   fontSize: 30,
                 //     helperText: 'or Username',
                     // helperStyle:
                 border: OutlineInputBorder(),
                 // enabledBorder: OutlineInputBorder(
                 //    borderSide: BorderSide(color: Colors.cyan)),
                 // icon: Icon(Icons.person),
                 // prefix: Icon(Icons.person),
                 // suffix: Icon(Icons.person,
                 // color: Colors.blue,
                 // size: 3,),
                 // suffixText:'user',

                    ),toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true,

            ),
              // cursorColor: Colors.red,
              // cursorWidth: 10,
              // cursorHeight: 10,
              // showCursor: false,
              // maxLines: 1,
              // maxLength: 100,
              // // obscureText: true,
              // obscuringCharacter: '*',
            ),


     // )

              ),
            ),
          // ),
        // ),
       // ),
    );
  }
}