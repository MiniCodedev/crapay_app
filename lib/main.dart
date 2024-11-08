import 'package:crapay_app/pages/initialize_page.dart';
import 'package:crapay_app/pages/language_selection_page.dart';
import 'package:crapay_app/pages/mobile_register_page.dart';
import 'package:crapay_app/pages/otp_verify_page.dart';
import 'package:crapay_app/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LanguageSelectionPage(),
      theme: AppTheme.lightTheme,
    );
  }
}
