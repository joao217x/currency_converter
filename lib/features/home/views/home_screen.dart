import 'package:currency_converter/features/login/controllers/login_firebase_controller.dart';
import 'package:currency_converter/shared/components/app_bar_widget.dart';
import 'package:currency_converter/shared/components/currency_row_widget.dart';
import 'package:currency_converter/shared/components/elevated_button_widget.dart';
import 'package:currency_converter/shared/components/txt_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firebaseController = LoginFirebaseController();

  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  Widget _content(context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBarWidget(
          onPressed: () {
            firebaseController.logout().then(
                  (_) => Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (route) => false,
                  ),
                );
          },
        ),
        body: SingleChildScrollView(
          child: Observer(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _favoritesTitle(),
                  const SizedBox(height: 20),
                  _listHeader(),
                  _currenciesList(),
                  _addCurrencyButton(),
                  const SizedBox(height: 5),
                  _requestDateTime(),
                  const SizedBox(height: 20),
                  _calculator(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _favoritesTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "FAVORITE CURRENCIES",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "?/4",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _listHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Currency",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            "Value on\nReais",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            "Converted\nValue",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.dehaze),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _currenciesList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: const [
          Divider(thickness: 2),
          CurrencyRow(),
          Divider(thickness: 2),
          CurrencyRow(),
          Divider(thickness: 2),
          CurrencyRow(),
          Divider(thickness: 2),
          CurrencyRow(),
        ],
      ),
    );
  }

  Widget _requestDateTime() {
    return const Text(
      'Last update: 00:00 - 06/10/2022',
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget _addCurrencyButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButtonWidget(
            onPressed: () {},
            child: const Text("Add new currency"),
          ),
        ),
      ],
    );
  }

  Widget _calculator() {
    return Row(
      children: [
        Expanded(
          child: TxtFormFieldWidget(
            onChanged: (String value) {},
            labelText: "Value to be converted",
            initialValue: '1.00',
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButtonWidget(
          onPressed: () {},
          child: const Text(
            "Update\nvalues",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
