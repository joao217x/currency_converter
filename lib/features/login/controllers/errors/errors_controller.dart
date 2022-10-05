import 'dart:async';
import 'package:currency_converter/shared/components/snackbar_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ErrorsController {
  static Future errorSnackbar(e, BuildContext context) async {
    // print("Exception: $e");
    try {
      throw e;
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        return await SnackbarLogin.invalidEmailFormat.show(context);
      } else if (e.code == "wrong-password") {
        return await SnackbarLogin.wrongPassword.show(context);
      } else if (e.code == "user-not-found") {
        return await SnackbarLogin.userNotFound.show(context);
      } else {
        return await SnackbarLogin.generic.show(context);
      }
    } catch (_) {}
  }
}
