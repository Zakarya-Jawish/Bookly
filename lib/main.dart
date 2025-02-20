import 'package:bookly/themes/themes.dart';
import 'package:flutter/material.dart';

import 'features/splash/presntation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode,
      // themeMode: ThemeMode.dark,
      home: const SplashView(),
    );
  }
}
