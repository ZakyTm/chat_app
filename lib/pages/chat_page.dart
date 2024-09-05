import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  ChatPage({super.key, required this.receiverEmail});

  // text controller for the message
  final TextEditingController messageController = TextEditingController();

  //chat & auth services instances

  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receiverEmail),
      ),
    );
  }
}
