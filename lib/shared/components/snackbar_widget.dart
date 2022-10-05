import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SnackbarLogin {
  static final invalidEmailFormat = Flushbar(
    message: 'E-mail com formato inválido',
    messageColor: Colors.black,
    icon: const Icon(
      Icons.clear,
      color: Colors.red,
    ),
    margin: const EdgeInsets.all(16),
    leftBarIndicatorColor: Colors.red,
    backgroundColor: Colors.white,
    borderRadius: BorderRadius.circular(12),
    borderColor: Colors.grey,
    duration: const Duration(seconds: 3),
  );

  static final wrongPassword = Flushbar(
    message: 'Senha incorreta',
    messageColor: Colors.black,
    icon: const Icon(
      Icons.clear,
      color: Colors.red,
    ),
    margin: const EdgeInsets.all(16),
    leftBarIndicatorColor: Colors.red,
    backgroundColor: Colors.white,
    borderRadius: BorderRadius.circular(12),
    borderColor: Colors.grey,
    duration: const Duration(seconds: 3),
  );

  static final userNotFound = Flushbar(
    message: 'Usuário não encontrado',
    messageColor: Colors.black,
    icon: const Icon(
      Icons.clear,
      color: Colors.red,
    ),
    margin: const EdgeInsets.all(16),
    leftBarIndicatorColor: Colors.red,
    backgroundColor: Colors.white,
    borderRadius: BorderRadius.circular(12),
    borderColor: Colors.grey,
    duration: const Duration(seconds: 3),
  );

  static final generic = Flushbar(
    message: 'Erro genérico',
    messageColor: Colors.black,
    icon: const Icon(
      Icons.clear,
      color: Colors.red,
    ),
    margin: const EdgeInsets.all(16),
    leftBarIndicatorColor: Colors.red,
    backgroundColor: Colors.white,
    borderRadius: BorderRadius.circular(12),
    borderColor: Colors.grey,
    duration: const Duration(seconds: 3),
  );
}
