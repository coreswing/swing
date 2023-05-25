import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<Widget> menuOptions;
  final List<String> screenNames;
  final VoidCallback onScreenSelected;

  const CustomDrawer({
    required this.menuOptions,
    required this.screenNames,
    required this.onScreenSelected,
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
          for (var i = 0; i < menuOptions.length; i++)
            ListTile(
              title: Text(screenNames[i]),
              onTap: () {
                onScreenSelected();
                // Add logic to navigate to the selected screen
              },
            ),
        ],
      ),
    );
  }
}
