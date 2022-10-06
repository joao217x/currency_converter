import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final Widget child;

  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green.shade500,
        fixedSize: const Size.fromHeight(46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: child,
    );
  }
}
