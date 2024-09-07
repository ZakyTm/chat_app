import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverID;
  ChatPage({super.key, required this.receiverEmail, required this.receiverID});

  // text controller for the message
  final TextEditingController messageController = TextEditingController();

  //chat & auth services instances

  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();

  // send message
  void sendMessage() async {
    // if there is something isde the textfield
    if (messageController.text.isNotEmpty) {
      //send the message
      await chatService.sendMessage(receiverID, messageController.text);

      // clear the contrller
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receiverEmail),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildMessageList(),
          ),
        ],
      ),
    );
  }

  // build message list
  Widget _buildMessageList() {
    String senderID = authService.getCurrentUser()!.uid;
    return StreamBuilder(stream: , builder: builder)
  }
}
