import 'package:firebase_auth/firebase_auth.dart';

class FirebaseClient {
  final instance = FirebaseAuth.instance;

  Future<UserCredential> logInFirebase({
    required String email,
    required String password,
  }) async {
    try {
      return await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw e.toString();
    }
  }

  Future<void> pwResetFirebase({required email}) async {
    try {
      await instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw e.toString();
    }
  }

  Future<void> logoutFirebase() async {
    try {
      await instance.signOut();
    } on FirebaseAuthException catch (e) {
      throw e.toString();
    }
  }
}
