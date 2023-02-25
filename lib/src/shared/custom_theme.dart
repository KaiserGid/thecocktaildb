import 'package:flutter/material.dart';

import 'custom_colors.dart';

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      cardTheme: const CardTheme(elevation: 5),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          size: 40,
          color: darkColorScheme.primaryContainer,
        ),
      ),
    );
