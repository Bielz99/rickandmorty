// lib/routes/routes.dart

import 'package:flutter/material.dart';
import 'package:rickandmorty/src/pages/home/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/charDetails';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      // case about:
      //return MaterialPageRoute(builder: (_) => AboutScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Rota não encontrada: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
