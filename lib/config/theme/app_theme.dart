import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: "Poppins",
    useMaterial3: true,
  );
}
