import 'package:flutter/material.dart';
import 'package:flutter_task/mainScaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Profile Page',
      body: Center(child: Text('This is the Profile Page')),
    );
  }
}
