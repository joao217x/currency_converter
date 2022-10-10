import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class LoadingWidget {
  static final loading = Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: JumpingDotsProgressIndicator(
      milliseconds: 100,
      color: Colors.white,
      fontSize: 30,
    ),
  );
}
