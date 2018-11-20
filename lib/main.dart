import 'package:flutter/material.dart';
import './ui/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    title: "Calculazzi",
    theme: ThemeData(primaryColor:  Colors.lightBlueAccent,accentColor: Colors.white30),
    home: new SplashScreen(),
  ));
}

