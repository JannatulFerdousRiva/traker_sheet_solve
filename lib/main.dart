import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task_02"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: ButtonPress(),
      ),
    );
  }
}

class ButtonPress extends StatefulWidget {
  const ButtonPress({super.key});

  @override
  State<ButtonPress> createState() => _ButtonPressState();
}

class _ButtonPressState extends State<ButtonPress> {
  String _displyText = "Click The Button";

  void afterButtonPress() {
    setState(() {
      _displyText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _displyText,
              style: TextStyle(fontSize: 25, color: Colors.redAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: afterButtonPress,
              child: Text("Click Here"),
            ),
          ],
        ),
      ),
    );
  }
}
