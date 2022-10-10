import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TxtFormFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String labelText;
  final IconButton? suffixIcon;
  final TextInputType? keyboardType;
  final String? initialValue;
  final MaskTextInputFormatter? mask;
  final bool obscureText;

  const TxtFormFieldWidget({
    Key? key,
    required this.onChanged,
    required this.labelText,
    this.suffixIcon,
    this.keyboardType,
    this.initialValue,
    this.mask,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      initialValue: initialValue,
      inputFormatters: mask != null ? [mask!] : null,
      obscureText: obscureText,
    );
  }
}
