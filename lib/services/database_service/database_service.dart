import 'package:cloud_firestore/cloud_firestore.dart';
import '../../const/firebase_const.dart';

class DataBaseService {

  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
    await firestore.collection(userCollection).where("email", isEqualTo: email).get();
    return snapshot;
  }
}