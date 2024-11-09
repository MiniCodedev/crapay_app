import 'package:crapay_app/pages/home/main_navigation.dart';
import 'package:crapay_app/pages/language_selection_page.dart';
import 'package:flutter/material.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainNavigation(),
      theme: AppTheme.lightTheme,
    );
  }
}
