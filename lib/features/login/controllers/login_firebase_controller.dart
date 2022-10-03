import 'package:currency_converter/shared/services/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'login_firebase_controller.g.dart';

class LoginFirebaseController = _LoginFirebaseControllerBase
    with _$LoginFirebaseController;

abstract class _LoginFirebaseControllerBase with Store {
  FirebaseClient firebaseClient = FirebaseClient();


  //Váriavel se está logado
  @observable
  bool isLogged = false;
  @action
  void setIsLogged(bool value) => isLogged = value;

  //
  @action
  void checkLogged() {
    if (FirebaseAuth.instance.currentUser != null) {
      setIsLogged(true);
    } else {
      setIsLogged(false);
    }
  }

  @action
  Future<void> logout() async {
    await firebaseClient.logoutFirebase();
    setIsLogged(false);
  }

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
    } catch (e) {
      throw e;
    }
  }

  // Future<void> pwReset({
  //   required email,
  //   required bool resetResult,
  // }) async {
  //   try {
  //     await firebaseClient.pwResetFirebase(email: pwRecover);
  //     setResetResultState(true);
  //     resetResult = resetResultState;
  //   } catch (e) {
  //     log(e.toString());
  //     setResetResultState(false);
  //     resetResult = resetResultState;
  //   }
  // }
}
