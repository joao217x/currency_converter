import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String user = '';
  @action
  void setUser(String value) => user = value;

  @observable
  String password = '';
  @action
  void setPassword(String value) => password = value;

  @observable
  String pwRecover = '';
  @action
  void setPwRecover(String value) => pwRecover = value;

  @observable
  bool isHidden = true;
  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }
}
