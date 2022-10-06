import 'package:currency_converter/shared/services/currency_api/models/currency_model.dart';

class AllCurrenciesModel {
  CurrencyModel usdBrl;
  CurrencyModel audBrl;
  CurrencyModel cadBrl;
  CurrencyModel eurBrl;
  CurrencyModel jpyBrl;
  CurrencyModel gbpBrl;
  CurrencyModel cnyBrl;

  AllCurrenciesModel({
    required this.usdBrl,
    required this.audBrl,
    required this.cadBrl,
    required this.eurBrl,
    required this.jpyBrl,
    required this.gbpBrl,
    required this.cnyBrl,
  });

  factory AllCurrenciesModel.fromJson(Map<String, dynamic> json) {
    return AllCurrenciesModel(
      usdBrl: CurrencyModel.fromJson(json['USDBRL']),
      audBrl: CurrencyModel.fromJson(json['AUDBRL']),
      cadBrl: CurrencyModel.fromJson(json['CADBRL']),
      eurBrl: CurrencyModel.fromJson(json['EURBRL']),
      jpyBrl: CurrencyModel.fromJson(json['JPYBRL']),
      gbpBrl: CurrencyModel.fromJson(json['GBPBRL']),
      cnyBrl: CurrencyModel.fromJson(json['CNYBRL']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['USDBRL'] = usdBrl.toJson();
    data['AUDBRL'] = audBrl.toJson();
    data['CADBRL'] = cadBrl.toJson();
    data['EURBRL'] = eurBrl.toJson();
    data['JPYBRL'] = jpyBrl.toJson();
    data['GBPBRL'] = gbpBrl.toJson();
    data['CNYBRL'] = cnyBrl.toJson();

    return data;
  }
}
