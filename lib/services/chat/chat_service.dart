import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  //get instance of firestore

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

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

  // get messages by chat id
}
