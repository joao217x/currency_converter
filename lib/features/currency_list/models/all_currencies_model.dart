import 'package:currency_converter/features/currency_list/models/currency_model.dart';

class AllCurrenciesModel {
  CurrencyModel? uSDBRL;
  CurrencyModel? aUDBRL;
  CurrencyModel? cADBRL;
  CurrencyModel? eURBRL;
  CurrencyModel? jPYBRL;
  CurrencyModel? gBPBRL;
  CurrencyModel? cNYBRL;

  AllCurrenciesModel({
    this.uSDBRL,
    this.aUDBRL,
    this.cADBRL,
    this.eURBRL,
    this.jPYBRL,
    this.gBPBRL,
    this.cNYBRL,
  });

  AllCurrenciesModel.fromJson(Map<String, dynamic> json) {
    uSDBRL =
        json['USDBRL'] != null ? CurrencyModel.fromJson(json['USDBRL']) : null;
    aUDBRL =
        json['AUDBRL'] != null ? CurrencyModel.fromJson(json['AUDBRL']) : null;
    cADBRL =
        json['CADBRL'] != null ? CurrencyModel.fromJson(json['CADBRL']) : null;
    eURBRL =
        json['EURBRL'] != null ? CurrencyModel.fromJson(json['EURBRL']) : null;
    jPYBRL =
        json['JPYBRL'] != null ? CurrencyModel.fromJson(json['JPYBRL']) : null;
    gBPBRL =
        json['GBPBRL'] != null ? CurrencyModel.fromJson(json['GBPBRL']) : null;
    cNYBRL =
        json['CNYBRL'] != null ? CurrencyModel.fromJson(json['CNYBRL']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (uSDBRL != null) {
      data['USDBRL'] = uSDBRL!.toJson();
    }
    if (aUDBRL != null) {
      data['AUDBRL'] = aUDBRL!.toJson();
    }
    if (cADBRL != null) {
      data['CADBRL'] = cADBRL!.toJson();
    }
    if (eURBRL != null) {
      data['EURBRL'] = eURBRL!.toJson();
    }
    if (jPYBRL != null) {
      data['JPYBRL'] = jPYBRL!.toJson();
    }
    if (gBPBRL != null) {
      data['GBPBRL'] = gBPBRL!.toJson();
    }
    if (cNYBRL != null) {
      data['CNYBRL'] = cNYBRL!.toJson();
    }
    return data;
  }
}
