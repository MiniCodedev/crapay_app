import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/home/pages/order_tracking_page.dart';
import 'package:crapay_app/features/home/widgets/booking_activity.dart';
import 'package:crapay_app/features/home/widgets/cancelled_activity.dart';
import 'package:crapay_app/features/home/widgets/finished_activity.dart';
import 'package:flutter/material.dart';

class ManageBookingsPage extends StatefulWidget {
  const ManageBookingsPage({super.key});

  @override
  State<ManageBookingsPage> createState() => _ManageBookingsPageState();
}

class _ManageBookingsPageState extends State<ManageBookingsPage> {
  int selected = 0;

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FittedBox(
              child: Row(
                children: [
                  topNavButton(() {
                    setState(() {
                      selected = 0;
                    });
                  }, Icons.shopping_cart_outlined, "Bookings", 0),
                  topNavButton(() {
                    setState(() {
                      selected = 1;
                    });
                  }, Icons.library_add_check_outlined, "Finished", 1),
                  topNavButton(() {
                    setState(() {
                      selected = 2;
                    });
                  }, Icons.free_cancellation_outlined, "cancelled", 2),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            selected == 0
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return BookingActivity(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OrderTrackingPage(),
                              ));
                            },
                            id: "SP0984982",
                            date: "7 April, 2024",
                            time: "9:00AM");
                      },
                    ),
                  )
                : Container(),
            selected == 1
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return FinishedActivity(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OrderTrackingPage(),
                              ));
                            },
                            id: "SP0984982",
                            date: "7 April, 2024",
                            kg: 100,
                            money: 20);
                      },
                    ),
                  )
                : Container(),
            selected == 2
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return CancelledActivity(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OrderTrackingPage(),
                              ));
                            },
                            id: "SP0984982",
                            date: "7 April, 2024");
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  Widget topNavButton(
      void Function() onPressed, IconData icon, String text, int index) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: index == selected
                ? AppColors.primaryColor
                : AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              icon,
              color:
                  index == selected ? AppColors.backgroundColor : Colors.black,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: index == selected
                    ? AppColors.backgroundColor
                    : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
