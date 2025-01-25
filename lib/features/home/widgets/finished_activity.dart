import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FinishedActivity extends StatelessWidget {
  final String id;
  final String date;
  final double kg;
  final double money;
  final VoidCallback onTap;
  const FinishedActivity({
    super.key,
    required this.id,
    required this.date,
    required this.kg,
    required this.money,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 6,
        color: AppColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID $id",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("$date   ${kg}Kg",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 13)),
                ],
              ),
              const Spacer(),
              Text("₹ $money",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor))
            ],
          ),
        ),
      ),
    );
  }
}
