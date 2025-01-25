import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BookingActivity extends StatelessWidget {
  final String id;
  final String date;
  final String time;
  final VoidCallback onTap;
  const BookingActivity(
      {super.key,
      required this.id,
      required this.date,
      required this.time,
      required this.onTap});

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
            children: [
              Row(
                children: [
                  Text("ID $id",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black)),
                  const Spacer(),
                  const Text("0-5kg",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(date,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 13)),
                  const Spacer(),
                  Text(date,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 13)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(time,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 13))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
