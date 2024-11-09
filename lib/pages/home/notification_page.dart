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
          "Notification",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            notificationTile(
              id: "SP0984982",
              date: "7 April, 2024",
              time: "9:00",
              content: "Partner ready to pickup your scrap",
              color: AppColors.primaryColor,
            ),
            notificationTile(
              id: "SP0984982",
              date: "7 April, 2024",
              time: "9:00",
              content: "Your booking is confirmed",
              color: AppColors.primaryColor,
            ),
            notificationTile(
              id: "SP0984982",
              date: "7 April, 2024",
              time: "9:00",
              content: "Order has been accepted",
              color: Colors.orange,
            ),
            notificationTile(
              id: "SP0984982",
              date: "7 April, 2024",
              time: "9:00",
              content: "Your booking is pending",
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationTile({
    required String id,
    required String date,
    required String time,
    required String content,
    required Color color,
  }) {
    return Card(
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
              height: 7,
            ),
            Text(
              "$date - (${time}AM)",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: color,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
