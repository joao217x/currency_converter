class CurrencyModel {
  String? code; //sigla da moeda
  String? codein; //sigla real
  String? low; //cotação
  String? createDate; //data e hora da requisição

  CurrencyModel({
    this.code,
    this.codein,
    this.low,
    this.createDate,
  });

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    codein = json['codein'];
    low = json['low'];
    createDate = json['create_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['codein'] = codein;
    data['low'] = low;
    data['create_date'] = createDate;
    return data;
  }
}
