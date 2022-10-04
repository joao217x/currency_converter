import 'package:currency_converter/features/login/views/login_screen.dart';
import 'package:currency_converter/features/splash/views/splash.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          '/splash',
          // '/login',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        // '/home': (context) => const HomeScreen(),
        // '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}
