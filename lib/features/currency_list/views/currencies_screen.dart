import 'package:currency_converter/features/currency_list/controllers/api_client_controller.dart';
import 'package:currency_converter/features/login/controllers/login_firebase_controller.dart';
import 'package:currency_converter/shared/components/app_bar_widget.dart';
import 'package:currency_converter/shared/components/currency_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CurrenciesScreen extends StatefulWidget {
  const CurrenciesScreen({Key? key}) : super(key: key);

  @override
  State<CurrenciesScreen> createState() => _CurrenciesScreenState();
}

class _CurrenciesScreenState extends State<CurrenciesScreen> {
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
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          child: Observer(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _allCurrenciesTitle(),
                  const SizedBox(height: 20),
                  _listHeader(),
                  _currenciesList(),
                  const SizedBox(height: 5),
                  _requestDateTime(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _allCurrenciesTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "ALL CURRENCIES",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Text(
          " Choose up to 4 favorites for fast access on the home screen",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _listHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: const [
          Text(
            "Currency",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 28),
          Text(
            "Value on\nReais",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 37),
          Text(
            "Converted\nValue",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
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
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ),
        ],
      ),
    );
  }

  Widget _requestDateTime() {
    return const Text(
      'Last update: 00:00 - 06/10/2022',
      style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
    );
  }
}
