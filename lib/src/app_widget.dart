import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/app_routers.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routers,
    );
  }
}
