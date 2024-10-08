import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  // login method

  void login(BuildContext context) async {
    // auth service
    final authService = AuthService();
    try {
      await authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          title: const Text("Error"),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

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
          Text(
            "Welcome back! you've been missed",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                text: "Login",
                onTap: () => login(context),
              ),
              const SizedBox(height: 10),
              // telling the user if he's not a member he should register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
