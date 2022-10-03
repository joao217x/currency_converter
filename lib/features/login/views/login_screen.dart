import 'package:currency_converter/features/login/controllers/login_store.dart';
import 'package:currency_converter/shared/components/elevated_button_widget.dart';
import 'package:currency_converter/shared/components/txt_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  Widget _content(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Observer(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  _appIconAndName(),
                  const SizedBox(height: 120),
                  _loginLabel(context),
                  const SizedBox(height: 15),
                  _emailField(context),
                  const SizedBox(height: 10),
                  _passwordField(context),
                  const SizedBox(height: 10),
                  _passwordForgot(context),
                  const SizedBox(height: 10),
                  _signIn(),
                ],
              ),
            ),
          );
        }),
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

  Widget _loginLabel(context) {
    return const Text(
      'LOGIN',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(context) {
    final loginStore = Provider.of<LoginStore>(context, listen: false);

    return TxtFormFieldWidget(
      onChanged: (String value) {
        loginStore.setUser(value);
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
      labelText: 'Senha',
      obscureText: loginStore.isHidden,
      suffixIcon: IconButton(
        onPressed: loginStore.togglePasswordVisibility,
        icon: loginStore.isHidden
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
    );
  }

  Widget _passwordForgot(context) {
    return GestureDetector(
      child: const Text(
        'Esqueceu a senha?',
        style: TextStyle(color: Colors.blue),
      ),
      onTap: () {
        // Navigator.popAndPushNamed(context, '/forget');
      },
    );
  }

  Widget _signIn() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButtonWidget(
            text: 'ENTRAR',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
