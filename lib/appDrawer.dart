import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerItem(title: 'Home', icon: Icons.home, routeName: '/home'),
          DrawerItem(
            title: 'Profile',
            icon: Icons.person,
            routeName: '/profile',
          ),
          DrawerItem(
            title: 'Settings',
            icon: Icons.settings,
            routeName: '/settings',
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routeName;

  const DrawerItem({
    required this.title,
    required this.icon,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, routeName);
      },
    );
  }
}
