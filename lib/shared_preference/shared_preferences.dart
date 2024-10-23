import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgetstutorial/shared_preference/share_pref.dart';

void main() {
  runApp(MaterialApp(
    home: SharePref(),
    title: 'Shared Preferenced',
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}


