import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotelbookingmobile/models/user_model.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // register new user
  Future<String> registerWithEmailAndPassword({
    required String uid,
    required String userName,
    required String email,
    required String password,
  }) async {
    String res = "An error occured";
    try {
      if (uid.isNotEmpty &&
          userName.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty) {
        // create a new user
        final UserCredential userCredential = await _auth
            .createUserWithEmailAndPassword(email: email, password: password);

        UserModel user = UserModel(
            uid: uid, email: email, userName: userName, password: password);

        if (userCredential.user != null) {
          await _firestore.collection('users').doc(_auth.currentUser!.uid).set(
                user.toJSON(),
              );

          res = "Registration successful";
        }
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == 'invalid email') {
        res = "invalid email";
      } else if (error.code == 'weak-password') {
        res = 'weak password';
      }
    } catch (error) {
      res = error.toString();
    }
    return res;
  }
}
