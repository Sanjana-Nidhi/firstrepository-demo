//import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetstutorial/text_list_button.dart';

void main(){
  runApp(ListPage());
}
// class PersonList extends StatelessWidget{
//   final List<String> person=[''];
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
// return MaterialApp();  }
// }
class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListPageState();
  }
}
class ListPageState extends State<ListPage>{
  // TextEditingController controller = TextEditingController();
  //final person= List<String>.generate(50, (i) => 'person $i');
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('ListPage'),
        ),body: Padding(padding: EdgeInsets.all(10),
          child: Row(
            children:[ ListView.separated(
                      itemCount: 50,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
                // iconColor : Colors.black45,
                // contentPadding: EdgeInsets.all(10),
                shape: OutlineInputBorder(),


              leading: Icon(Icons.person,color: Colors.black,),
              title: Text('person'),
              trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){
                  // print('Calling$person[index]');
              }, icon: Icon(Icons.call,color: Colors.indigo,),),
                // IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.indigo,)


              ],

            ));

                 },

            separatorBuilder: (BuildContext context, int index) {
            return Divider();




              // Card(
              // color: Colors.blueGrey,
              // child: Padding(
              //   child: Text('Separator $index'),
              //   padding: EdgeInsets.all(3),
              // ),
            // );
                  },),
          ]),
        ),
      )
    );
  }
}






// Card(color: Colors.black12,margin: EdgeInsets.all(10),
// shape: OutlineInputBorder(),
// child: Padding(
// child: Text('person${index+1}'),
// padding: EdgeInsets.all(20),
// ),
// );



// class TextButton extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return TextButtonState();
//   }
// }
// class TextButtonState extends State<TextButton>{
//
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Button'),
//         ),body: Center(
//         child: ElevatedButton(
//           onPressed: (){},
//           child: Text('Submit'),
//
//         ),
//       ),
//       ),
//     );
//   }
// }