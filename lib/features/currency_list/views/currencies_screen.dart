import 'package:currency_converter/shared/services/firebase/controller/firebase_controller.dart';
import 'package:currency_converter/shared/components/app_bar_widget.dart';
import 'package:currency_converter/shared/components/currency_row_widget.dart';
import 'package:currency_converter/shared/services/currency_api/controller/api_client_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class CurrenciesScreen extends StatefulWidget {
  const CurrenciesScreen({Key? key}) : super(key: key);

  @override
  State<CurrenciesScreen> createState() => _CurrenciesScreenState();
}

class _CurrenciesScreenState extends State<CurrenciesScreen> {
  final firebaseController = FirebaseController();
  final apiController = CurrenciesApiController();

  @override
  void initState() {
    super.initState();
    apiController.loadData(); // não funciona
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
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _allCurrenciesTitle(),
                const SizedBox(height: 20),
                _listHeader(),
                _currenciesList(),
                const SizedBox(height: 10),
                _requestDateTime(),
              ],
            ),
          ),
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
        children: [
          const Text(
            "Currency",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 35),
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
          const SizedBox(width: 33),
          IconButton(
            onPressed: () {
              // botão para atualizar os valores
            },
            icon: const Icon(Icons.cached_rounded),
            color: Colors.green.shade500,
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
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'USD',
            currencyValue: 'R\$'+ apiController.getResult!.usdBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'AUD',
            currencyValue: 'R\$' + apiController.getResult!.audBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'CAD',
            currencyValue: 'R\$' + apiController.getResult!.cadBrl.low, 
            // se entrar na tela com o currencyValue comentado e descomentar depois, funciona
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'EUR',
            currencyValue: 'R\$' + apiController.getResult!.eurBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'JPY',
            currencyValue: 'R\$' + apiController.getResult!.jpyBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'GBP',
            currencyValue: 'R\$' + apiController.getResult!.gbpBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
          const Divider(thickness: 2),
          CurrencyRow(
            iconButton: IconButton(
              onPressed: () {
                // botão para add aos favoritos
              },
              icon: const Icon(Icons.star_border_rounded),
            ),
            symbol: 'CNY',
            currencyValue: 'R\$' + apiController.getResult!.cnyBrl.low,
            currencyConverted: 'R\$', // método de conversão
          ),
        ],
      ),
    );
  }

  Widget _requestDateTime() {
    return Text(
      'Last update: ' + apiController.getResult!.cnyBrl.createDate,
      style: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
    );
  }
}
