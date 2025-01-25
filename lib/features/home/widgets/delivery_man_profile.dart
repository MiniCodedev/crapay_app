import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DeliveryManProfile extends StatelessWidget {
  final String name;

  const DeliveryManProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.greyColor,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.greyColor, width: 1),
          ),
          child: const Icon(Icons.person_outline_rounded),
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
            "Our delivery guy $name is on the way to pickup the scrap.",
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
