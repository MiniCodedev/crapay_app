import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CancelledActivity extends StatelessWidget {
  final String id;
  final String date;
  final VoidCallback onTap;
  const CancelledActivity({
    super.key,
    required this.id,
    required this.date,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID $id",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              const SizedBox(
                height: 5,
              ),
              Text(
                date,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
