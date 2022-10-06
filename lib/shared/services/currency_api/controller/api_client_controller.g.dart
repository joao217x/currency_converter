// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ApiClientController on _ApiClientControllerBase, Store {
  late final _$getResultAtom =
      Atom(name: '_ApiClientControllerBase.getResult', context: context);

  @override
  AllCurrenciesModel? get getResult {
    _$getResultAtom.reportRead();
    return super.getResult;
  }

  @override
  set getResult(AllCurrenciesModel? value) {
    _$getResultAtom.reportWrite(value, super.getResult, () {
      super.getResult = value;
    });
  }

  late final _$getCurrencyAsyncAction =
      AsyncAction('_ApiClientControllerBase.getCurrency', context: context);

  @override
  Future<AllCurrenciesModel?> getCurrency() {
    return _$getCurrencyAsyncAction.run(() => super.getCurrency());
  }

  @override
  String toString() {
    return '''
getResult: ${getResult}
    ''';
  }
}
