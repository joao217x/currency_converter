import 'package:currency_converter/shared/services/currency_api/client/currencies_api_client.dart';
import 'package:currency_converter/shared/services/currency_api/models/all_currencies_model.dart';

class CurrenciesApiController {
  final client = CurrenciesApiClient();

  AllCurrenciesModel? getResult;

  Future<AllCurrenciesModel?> getCurrency() async {
    try {
      getResult = await client.getCurrencyClient();
    } catch (_) {
      getResult = null;
    }
    return getResult;
  }
}
