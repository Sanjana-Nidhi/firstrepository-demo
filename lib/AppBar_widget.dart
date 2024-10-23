import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.account_box),
        // leadingWidth: 300,
        // title: Text('Name'),
        // title: Container(
        //   width: 50,
        //   child: Image.network('https://www.google.com/search?q=ram+navami+images&sca_esv=44ecb81858b984d3&sca_upv=1&udm=2&sxsrf=ADLYWII1NNXB0I20fm3eBgLqBLYb9rtU3w%3A1722454605483&ei=TZKqZtGTHaDh2roP0ZXsmQE&oq=ra&gs_lp=Egxnd3Mtd2l6LXNlcnAiAnJhKgIIADIEECMYJzIEECMYJzIKEAAYgAQYQxiKBTIQEAAYgAQYsQMYQxiDARiKBTINEAAYgAQYsQMYQxiKBTIKEAAYgAQYQxiKBTINEAAYgAQYsQMYQxiKBTINEAAYgAQYsQMYQxiKBTINEAAYgAQYsQMYQxiKBTINEAAYgAQYsQMYQxiKBUi5IlDxEVjfFHADeACQAQCYAY0BoAGMAqoBAzAuMrgBA8gBAPgBAZgCBaAC9wLCAggQABiABBixA8ICBRAAGIAEmAMAiAYBkgcDMy4yoAf8Dg&sclient=gws-wiz-serp#vhid=YpI-HnfV6j3AZM&vssid=mosaic'),
      actions: [
        Icon(Icons.more_vert)
      ],  
      ),
        
      
      body: Center(
        child: Container(
          child: Text('Hello'),
          color: Colors.orange,
          padding: EdgeInsets.all(25),
        ),
      ),
    ),
    
  ));
}