import 'package:currency_converter/features/login/service/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'login_firebase_controller.g.dart';

class LoginFirebaseController = _LoginFirebaseControllerBase
    with _$LoginFirebaseController;

abstract class _LoginFirebaseControllerBase with Store {
  FirebaseClient firebaseClient = FirebaseClient();

  // Váriavel que diz se está logado
  @observable
  bool isLogged = false;
  @action
  void setIsLogged(bool value) => isLogged = value;

  // Método que verifica se está logado
  @action
  void checkLogged() {
    if (FirebaseAuth.instance.currentUser != null) {
      setIsLogged(true);
    } else {
      setIsLogged(false);
    }
  }

  // Método que loga
  @action
  Future<UserCredential> logIn({
    required String email,
    required String password,
  }) async {
    try {
      return await firebaseClient.logInFirebase(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  // Método que desloga
  @action
  Future<void> logout() async {
    await firebaseClient.logoutFirebase();
    setIsLogged(false);
  }
}
