import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const MenuTile({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primaryColor.withGreen(100),
      ),
      title: Text(
        text,
        style:
            TextStyle(color: AppColors.greyColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
