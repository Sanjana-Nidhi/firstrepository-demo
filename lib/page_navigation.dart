import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
 class MyApp extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return MaterialApp(
      home: PageA(),
      title: 'Page Navigation',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
    );
  }
 }
 class PageA extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('PageA'),
      ),body: Center(
      child: ElevatedButton(
        onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PageB()));
          },
        child: Text('OpenPage'),
      ),
    ),
    );
  }
 }
 class PageB extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('PageB'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('GotoPage'),
        ),
      ),
    );
  }
 }


// import 'dart:js';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const MaterialApp(
//     title: 'NavigationBasics',
//     home: PageA(),
//   ));
// }
// class PageA extends StatelessWidget{
//   const PageA({super.key});
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text('PageA'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder:(context)=>PageB()),);
//           },
//           child: Text('NextPage'),
//         ),
//
//       ),
//     );
//   }
// }
// class PageB extends StatelessWidget{
//   const PageB({super.key});
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PageB'),
//       ),body: Center(
//       child: ElevatedButton(
//         onPressed: (){
//           Navigator.pop(context);
//         },
//         child: Text('Back'),
//       ),
//     ),
//     );
//   }
// }
