// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_firebase_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginFirebaseController on _LoginFirebaseControllerBase, Store {
  late final _$isLoggedAtom =
      Atom(name: '_LoginFirebaseControllerBase.isLogged', context: context);

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  late final _$logoutAsyncAction =
      AsyncAction('_LoginFirebaseControllerBase.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$logInAsyncAction =
      AsyncAction('_LoginFirebaseControllerBase.logIn', context: context);

  @override
  Future<UserCredential> logIn(
      {required String email, required String password}) {
    return _$logInAsyncAction
        .run(() => super.logIn(email: email, password: password));
  }

  late final _$_LoginFirebaseControllerBaseActionController =
      ActionController(name: '_LoginFirebaseControllerBase', context: context);

  @override
  void setIsLogged(bool value) {
    final _$actionInfo = _$_LoginFirebaseControllerBaseActionController
        .startAction(name: '_LoginFirebaseControllerBase.setIsLogged');
    try {
      return super.setIsLogged(value);
    } finally {
      _$_LoginFirebaseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkLogged() {
    final _$actionInfo = _$_LoginFirebaseControllerBaseActionController
        .startAction(name: '_LoginFirebaseControllerBase.checkLogged');
    try {
      return super.checkLogged();
    } finally {
      _$_LoginFirebaseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged}
    ''';
  }
}
