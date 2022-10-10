import 'package:currency_converter/shared/services/currency_api/models/all_currencies_model.dart';
import 'package:dio/dio.dart';

class CurrenciesApiClient {
  final client = Dio();

  Future<AllCurrenciesModel> getCurrencyClient() async {
    try {
      final result = await client.get(
        'https://economia.awesomeapi.com.br/last/USD-BRL,AUD-BRL,CAD-BRL,EUR-BRL,JPY-BRL,GBP-BRL,CNY-BRL',
      );

      return AllCurrenciesModel.fromJson(result.data);
    } catch (e) {
      rethrow;
    }
  }
}
