import 'package:currency_converter/features/login/controllers/login_firebase_controller.dart';
import 'package:currency_converter/features/login/controllers/login_store.dart';
import 'package:currency_converter/features/login/controllers/errors/errors_controller.dart';
import 'package:currency_converter/shared/components/elevated_button_widget.dart';
import 'package:currency_converter/shared/components/loading_widget.dart';
import 'package:currency_converter/shared/components/txt_form_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  Widget _content(context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Observer(builder: (context) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    _appIconAndName(),
                    const SizedBox(height: 120),
                    _emailField(context),
                    const SizedBox(height: 10),
                    _passwordField(context),
                    const SizedBox(height: 10),
                    _logInButton(context),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _appIconAndName() {
    return Column(
      children: const [
        Icon(
          Icons.monetization_on,
          size: 80,
        ),
        SizedBox(height: 30),
        Text(
          'CURRENCY CONVERTER',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _emailField(context) {
    final loginStore = Provider.of<LoginStore>(context, listen: false);

    return TxtFormFieldWidget(
      onChanged: (String value) {
        loginStore.setEmail(value);
      },
      labelText: 'E-mail',
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _passwordField(context) {
    final loginStore = Provider.of<LoginStore>(context, listen: false);

    return TxtFormFieldWidget(
      onChanged: (String value) {
        loginStore.setPassword(value);
      },
      labelText: 'Password',
      obscureText: loginStore.isHidden,
      suffixIcon: IconButton(
        onPressed: loginStore.togglePasswordVisibility,
        icon: loginStore.isHidden
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
    );
  }

  Widget _logInButton(context) {
    final firebaseController = LoginFirebaseController();
    final loginStore = Provider.of<LoginStore>(context, listen: false);

    return Row(
      children: [
        Expanded(
          child: ElevatedButtonWidget(
            onPressed: () async {
              loginStore.setIsLoading(true);
              try {
                final result = await firebaseController.logIn(
                  email: loginStore.email,
                  password: loginStore.password,
                );
                if (result.runtimeType == UserCredential) {
                  Navigator.popAndPushNamed(context, '/home');
                }
              } on Exception catch (e) {
                await ErrorsController.errorSnackbar(e, context);
              }
              loginStore.setIsLoading(false);
            },
            child: loginStore.isLoading == true
                ? LoadingWidget.loading
                : const Text("LOGIN"),
          ),
        ),
      ],
    );
  }
}
