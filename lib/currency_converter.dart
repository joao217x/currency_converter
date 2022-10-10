import 'package:currency_converter/features/currency_list/views/currencies_screen.dart';
import 'package:currency_converter/features/home/views/home_screen.dart';
import 'package:currency_converter/features/login/view/login_screen.dart';
import 'package:currency_converter/features/splash/view/splash.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      // '/login',
      // '/home',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/currencies': (context) => const CurrenciesScreen(),
      },
    );
  }
}
