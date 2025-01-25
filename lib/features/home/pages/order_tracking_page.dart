import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/home/widgets/delivery_man_profile.dart';
import 'package:crapay_app/features/home/widgets/icon_text_button.dart';
import 'package:crapay_app/features/home/widgets/my_timeline_tile.dart';
import 'package:flutter/material.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
            )),
        backgroundColor: Colors.white,
        title: const Text("Order tracking",
            style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        "ID SP0934570304",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "7 April, 2024  (9:00AM)",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor,
                          fontSize: 13,
                        ),
                      ),
                      trailing: Text(
                        "10 Kg",
                        style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    _timeLine(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DeliveryManProfile(
              name: "Ravichandran",
            ),
            const SizedBox(
              height: 50,
            ),
            IconTextButton(
              onPressed: () {},
              icon: Icons.call_rounded,
              text: "Call",
            )
          ],
        ),
      ),
    );
  }

  Widget _timeLine() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(
        children: [
          MyTimelineTile(
            isFirst: true,
            isLast: false,
            isPassed: true,
            text: "Scheduled on April 7",
            subText: "7 April, 2024 - (10:00AM)",
          ),
          MyTimelineTile(
            isFirst: false,
            isLast: false,
            isPassed: true,
            text: "Your scrap metrial sucessfully scheduled",
            subText: "8 April, 2024 - (8:00AM)",
          ),
          MyTimelineTile(
            isFirst: false,
            isLast: true,
            isPassed: false,
            text:
                "A pickup truck arrived near your location on April 8 at 10:30 AM.",
            subText: "8 April, 2024 - (10:00AM)",
          )
        ],
      ),
    );
  }
}
