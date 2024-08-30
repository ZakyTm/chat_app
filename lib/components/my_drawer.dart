import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() async {
    final _authService = AuthService();
    _authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //Logo drawer header
                DrawerHeader(
                  child: Center(
                    child: Icon(Icons.message,
                        color: Theme.of(context).colorScheme.primary, size: 60),
                  ),
                ),

                const SizedBox(height: 50),
                // Home list tile
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: const Text("H O M E"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                // setting list tile
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: const Text("S E T T I N G S"),
                    leading: const Icon(Icons.settings),
                    onTap: () {
                      Navigator.pop(context);

                      // navigate to the settings page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //logout list tile
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 30),
              child: ListTile(
                title: const Text("L O  G O U T"),
                leading: const Icon(Icons.logout),
                onTap: logout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
