import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/app_routers.dart';
import 'package:thecocktaildb/src/shared/global_constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routers,
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(
        // brightness: Brightness.dark,
        useMaterial3: true,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: FontSize.title,
          ),
        ),
        scaffoldBackgroundColor: Colors.purple,

        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: FontSize.title),
          headline6: TextStyle(color: Colors.white, fontSize: FontSize.subTitle),
        ),
      ),
    );
  }
}
