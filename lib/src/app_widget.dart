import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/app_routers.dart';
import 'package:thecocktaildb/src/shared/custom_colors.dart';
import 'package:thecocktaildb/src/shared/custom_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routers,
      themeMode: ThemeMode.dark,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: darkTheme,
    );
  }
}
