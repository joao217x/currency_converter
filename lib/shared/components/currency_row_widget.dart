import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  final IconButton iconButton;
  final String symbol;
  final String currencyValue;
  final String currencyConverted;

  const CurrencyRow({
    Key? key,
    required this.iconButton,
    required this.symbol,
    required this.currencyValue,
    required this.currencyConverted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(symbol),
        Text(currencyValue, textAlign: TextAlign.start),
        Text(currencyConverted),
        iconButton,
      ],
    );
  }
}
