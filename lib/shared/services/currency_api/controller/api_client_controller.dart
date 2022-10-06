import 'package:currency_converter/shared/services/currency_api/client/currencies_api_client.dart';
import 'package:currency_converter/shared/services/currency_api/models/all_currencies_model.dart';
import 'package:mobx/mobx.dart';
part 'api_client_controller.g.dart';

class ApiClientController = _ApiClientControllerBase with _$ApiClientController;

abstract class _ApiClientControllerBase with Store {
  final client = CurrenciesApiClient();

  @observable
  AllCurrenciesModel? getResult;
  @action
  Future<AllCurrenciesModel?> getCurrency() async {
    try {
      getResult = await client.getCurrencyClient();
    } catch (_) {
      getResult = null;
    }
    return getResult;
  }
}
