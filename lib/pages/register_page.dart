import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfiled.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RegisterPage({super.key});

  void register() {}

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
          // Creating an account
          Text(
            "Let's create an account for you!!?",
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
          MyTextfiled(
            hintText: "Confirm your password",
            obscureText: true,
            controller: confirmPasswordController,
          ),
          const SizedBox(height: 25),
          // Login button
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                text: "Register",
                onTap: register,
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
                  Text(
                    "Register now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
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
