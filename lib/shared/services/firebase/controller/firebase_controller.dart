import 'package:currency_converter/shared/services/firebase/client/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseController {
  FirebaseClient firebaseClient = FirebaseClient();

  // Método que loga
  Future<UserCredential> logIn({
    required String email,
    required String password,
  }) async {
    try {
      return await firebaseClient.logInFirebase(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (_) {
      rethrow;
    }
  }

  // Método que desloga
  Future<void> logout() async {
    await firebaseClient.logoutFirebase();
  }
}
