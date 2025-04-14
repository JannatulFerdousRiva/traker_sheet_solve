import 'package:flutter/material.dart';
import 'package:traker_sheet_solve/firstScreen.dart' show FastHomeScreen;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FastHomeScreen(),
    );
  }
}
