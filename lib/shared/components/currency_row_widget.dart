import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  final IconButton iconButton;

  const CurrencyRow({
    Key? key,
    required this.iconButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Sigla"),
        const Text("US20,00"),
        const Text("RS20,00"),
        iconButton,
      ],
    );
  }
}
