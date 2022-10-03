import 'package:currency_converter/currency_converter.dart';
import 'package:currency_converter/features/login/controllers/login_store.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        Provider<LoginStore>(create: (_) => LoginStore()),
      ],
      child: const CurrencyConverter(),
    ),
  );
}
