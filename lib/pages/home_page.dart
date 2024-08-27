import 'package:chat_app/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() async {
    final _authService = AuthService();
    _authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: logout,
          ),
        ],
      ),
    );
  }
}
