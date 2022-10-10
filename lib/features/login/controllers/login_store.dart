import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  // User email
  @observable
  String email = '';
  @action
  void setEmail(String value) => email = value;

  // User password
  @observable
  String password = '';
  @action
  void setPassword(String value) => password = value;

  // Hides the password
  @observable
  bool isHidden = true;
  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }

  // Loading state
  @observable
  bool isLoading = false;
  @action
  void setIsLoading(bool value) => isLoading = value;
}
