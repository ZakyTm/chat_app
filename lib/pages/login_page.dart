import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Icon(Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary),

          SizedBox(height: 50),
          // Welcome back message
          Text("Welcome back! you've been missed",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16)),

          SizedBox(height: 25),
          // Email input
          TextField(),
        ],
      ),
    );
  }
}
