import 'package:flutter/material.dart';
import 'package:flutter_task/mainScaffold.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Settings Page',
      body: Center(child: Text('Settings Page')),
    );
  }
}
