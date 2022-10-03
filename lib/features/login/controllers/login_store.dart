import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  // Váriavel do email do usuário
  @observable
  String user = '';
  @action
  void setUser(String value) => user = value;

  // Váriavel da senha do usuário
  @observable
  String password = '';
  @action
  void setPassword(String value) => password = value;

  // Variável e metódo que escondem a senha
  @observable
  bool isHidden = true;
  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }
}
