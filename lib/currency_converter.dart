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
          // '/splash',
          '/login',
      routes: {
        '/splash': (context) => const SplashScreen(),
        // '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        // '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}
