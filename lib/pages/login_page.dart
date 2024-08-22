import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Icon(Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary),

          const SizedBox(height: 50),
          // Welcome back message
          Text("Welcome back! you've been missed",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16)),

          const SizedBox(height: 25),
          // Email input
          MyTextfiled(
            hintText: "Email",
            obscureText: false,
            controller: emailController,
          ),
          //passWord input
          MyTextfiled(
            hintText: "PassWord ..",
            obscureText: true,
            controller: passwordController,
          ),
          const SizedBox(height: 25),
          // Login button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyButton(text: "Login", onTap: login),
              const SizedBox(height: 10),
              MyButton(
                text: "Register",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
