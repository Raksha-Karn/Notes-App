import 'package:flutter/material.dart';

class NoteSettings extends StatelessWidget {
  void Function()? onEditPressed;
  void Function()? onDeletePressed;

  NoteSettings({super.key, required this.onEditPressed, required this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onEditPressed!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            child: Center(child: Text("Edit", style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            ),))
          )
        ),

        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onDeletePressed!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            child: Center(child: Text("Delete", style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            ),))
          )
        ),
      ],
    );
  }
}