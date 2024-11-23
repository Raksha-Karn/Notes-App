import 'package:flutter/material.dart';
import 'package:notes_app/components/drawer_tile.dart';
import 'package:notes_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          const DrawerHeader(child: Icon(Icons.edit),
          ),

          const SizedBox(height: 10),

          MyDrawerTile(title: "Notes", leading: const Icon(Icons.home), onTap: () => Navigator.pop(context)),
          MyDrawerTile(title: "Settings", leading: const Icon(Icons.settings), onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
          }),
        ],
      )
      );
  }
}