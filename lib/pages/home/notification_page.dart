import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Activity",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
