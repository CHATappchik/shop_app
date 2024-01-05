import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_app/const/colors.dart';
import '../../const/firebase_const.dart';
import '../../often_used/often_used_func.dart';

part 'auth_service_controller.g.dart';

class AuthService = _AuthService with _$AuthService;

abstract class _AuthService with Store {


  @observable
  User? currentUser;

  //login metod

  @action
  Future loginUser({email, password, context}) async {

    try {
      UserCredential? userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      currentUser = userCredential.user;

      if (currentUser != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, redColor, e);
    }
  }

  // register user
  Future<void> createUser({email, password, context}) async {

    try {
      UserCredential? userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      currentUser = userCredential.user;
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, redColor, e);
    }
  }

  //storing data metod

  @action
  Future <void> storeUserData({name, password, email}) async {
    DocumentReference store =
        await firestore.collection(userCollection).doc(currentUser!.uid);
    store.set(
        {'name': name, 'password': password, 'email': email, 'imageUrl': ''});
  }

//logout metod

  @action
  Future<void> loguotMetod(context) async {
    try {
      await auth.signOut();
      currentUser = null;
    } catch (e) {
      showSnackBar(context, redColor, e);
    }
  }
}
