import 'package:chat_app/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {
  //get instance of firestore & auth

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

//get user stream
  Stream<List<Map<String, dynamic>>> getUserStream() {
    return firestore.collection("users").snapshots().map(
      (snapshot) {
        return snapshot.docs.map(
          (doc) {
            //got through each individual user
            //return the data of each user
            final user = doc.data();
            return user;
          },
        ).toList();
      },
    );
  }

  //get all chats

  //get chat by id

  // send a message
  Future<void> sendMessage(String receiverID, message) async {
    // get current user info
    final String currentUserID = auth.currentUser!.uid;
    final String currentUserEmail = auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();

    // creat a new message
    Message newMessage = Message(
        senderID: currentUserID,
        senderEmail: currentUserEmail,
        receiverID: receiverID,
        message: message,
        timestamp: timestamp);

    // custruct chat room ID for the two users (sorted to ensure uniqueness)
    List<String> ids = [currentUserID, receiverID];
    ids.sort(); // sort the ids just to know the order of the messages which one
    //is the first and what comes after you send your message !!
    String chatRoomID = ids.join(" _ ");
    //add new message to database

    await firestore
        .collection("chat_room")
        .doc()
        .collection("messages")
        .add(newMessage.toMap());
  }

  // get messages by chat id
}
