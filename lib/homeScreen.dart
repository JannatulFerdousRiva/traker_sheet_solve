import 'package:flutter/material.dart';
import 'package:flutter_task/mainScaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Home Page',
      body: Center(child: Text('Welcome to Home Page')),
    );
  }
}
