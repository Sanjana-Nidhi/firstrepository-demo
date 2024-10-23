import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgetstutorial/shared_preference/second_screen.dart';

import 'shared_preferences.dart';

class SharePref extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefState();
  }
}

class _PrefState extends State<SharePref> {
  final TextEditingController _UserIDController = TextEditingController();
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('User_ID', _UserIDController.text);
    await prefs.setString('Username', _UsernameController.text);
    await prefs.setString('Password', _passwordController.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferenced'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: _UserIDController,
                  decoration: InputDecoration(
                      label: Text('User ID'),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)))),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _UsernameController,
                decoration: InputDecoration(
                    label: Text('Username'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _saveData,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    textStyle: TextStyle(fontSize: 20,
                        color: Colors.black12)
                ),
                child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
