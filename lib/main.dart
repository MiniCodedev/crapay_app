import 'package:crapay_app/features/home/pages/order_tracking_page.dart';
import 'package:crapay_app/features/init/pages/language_selection_page.dart';
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
      home: const OrderTrackingPage(),
      theme: AppTheme.lightTheme,
    );
  }
}
