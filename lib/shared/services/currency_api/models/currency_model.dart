class CurrencyModel {
  String code; //sigla da moeda
  String low; //cotação
  String createDate; //data e hora da requisição

  CurrencyModel({
    required this.code,
    required this.low,
    required this.createDate,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      code: json['code'],
      low: json['low'],
      createDate: json['create_date'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['code'] = code;
    data['low'] = low;
    data['create_date'] = createDate;

    return data;
  }
}
