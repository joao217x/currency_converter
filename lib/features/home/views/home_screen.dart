import 'dart:developer';
import 'package:currency_converter/features/currency_list/controllers/api_client_controller.dart';
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
  final apiClient = ApiClientController();

  @override
  void initState() {
    super.initState();
    apiClient.getCurrency();
  }

  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  Widget _content(context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBarWidget(
          actions: [
            IconButton(
              onPressed: () {
                firebaseController.logout().then(
                      (_) => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (route) => false,
                      ),
                    );
              },
              icon: const Icon(Icons.logout_rounded),
            )
          ],
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
        children: [
          const Text(
            "Currency",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 28),
          const Text(
            "Value on\nReais",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 37),
          const Text(
            "Converted\nValue",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 40),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/currencies');
            },
            icon: const Icon(Icons.dehaze),
          ),
        ],
      ),
    );
  }

  Widget _currenciesList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.clear),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.clear),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.clear),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.clear),
            ),
          ),
        ],
      ),
    );
  }

  Widget _addCurrencyButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButtonWidget(
            onPressed: () {
              Navigator.pushNamed(context, '/currencies');
            },
            child: const Text("Add new currency"),
          ),
        ),
      ],
    );
  }

  Widget _requestDateTime() {
    return const Text(
      'Last update: 00:00 - 06/10/2022',
      style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
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
          onPressed: () {
            final result = apiClient.getCurrency();
            inspect(result);
          },
          child: const Text(
            "Update\nvalues",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
