import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}
class DemoApp extends StatefulWidget{
  @override
  State <StatefulWidget> createState (){
    return ListTextState();
  }
}
class ListTextState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: ListView(
         children: [
            ListTile(
              title: Text('List Text'),
              subtitle: Text('List subtitle \n3rd line'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.star),
              onTap: (){},
              onLongPress: (){},
               // dense: true,
              isThreeLine: true,
              tileColor: Colors.tealAccent,
              // enabled: false,
            ),
          ListTile(
              title: Text('List Text'),
              subtitle: Text('List subtitle'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.star),
            tileColor: Colors.yellowAccent,
            // selected: true,
            )
          ],
        )

      )
    );
  }
}