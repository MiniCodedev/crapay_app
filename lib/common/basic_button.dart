import 'package:crapay_app/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({super.key, required this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
