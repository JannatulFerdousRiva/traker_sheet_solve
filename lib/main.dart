import 'package:flutter/material.dart';
import 'package:flutter_task/homeScreen.dart';
import 'package:flutter_task/profileScreen.dart';
import 'package:flutter_task/settingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer Navigation App",
      home: HomeScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/profile": (context) => ProfileScreen(),
        "/settings": (context) => SettingScreen(),
      },
    );
  }
}
