import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onMenuPressed;

  const TopBar({
    required this.title,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: onMenuPressed,
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomDrawer extends StatelessWidget {
  final List<Widget> menuOptions;

  const CustomDrawer({
    required this.menuOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Menu Options'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ...menuOptions,
        ],
      ),
    );
  }
}
