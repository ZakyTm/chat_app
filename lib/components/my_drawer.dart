import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            //Logo
            Icon(Icons.message,
                size: 60, color: Theme.of(context).colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
