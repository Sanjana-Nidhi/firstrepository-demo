import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String UserID = '';
  String Username = '';
  String Password = '';
  bool isEditable = false;
  final TextEditingController _UserIDController = TextEditingController();
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      UserID = prefs.getString('User_ID') ?? '';
      Username = prefs.getString('Username') ?? '';
      Password = prefs.getString('Password') ?? '';
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('UserID:$UserID'),
            Text('Username:$Username'),
            Text('Password:$Password'),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back'),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueGrey,
                          textStyle: TextStyle(fontSize: 20,
                              color: Colors.black12)
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                  ),
                  isEditable
                      ? Container()
                      : ElevatedButton(
                      onPressed: () {
                        isEditable = true;
                        setState(() {});
                      }, style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    textStyle: TextStyle(fontSize: 20,
                    color: Colors.black12)
                  ),
                      child: Text('Edit'))
                ]),
            isEditable ? editFields() : Container()
          ],
        ),
      ),
    );
  }
  Widget editFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
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
    );
  }

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('User_ID', _UserIDController.text);
    await prefs.setString('Username', _UsernameController.text);
    await prefs.setString('Password', _passwordController.text);
    isEditable = false;
    _loadData();
  }
}

