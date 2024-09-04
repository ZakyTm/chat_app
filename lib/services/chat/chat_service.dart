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
  Future<void> sendMessage(String receiverId, message) async {
    // get current user info
    final String currentUserID = auth.currentUser!.uid;
    final String currentUserEmail = auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();

    // creat a new message
    

    // custruct chat room ID for the two users (sorted to ensure uniqueness)

    //add new message to database
  }

  // get messages by chat id
}
