import 'package:crapay_app/config/theme/app_colors.dart';
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
                        return bookingActivity(
                            "SP0984982", "7 April, 2024", "9:00AM");
                      },
                    ),
                  )
                : Container(),
            selected == 1
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return finishedActivity(
                            "SP0984982", "7 April, 2024", 100, 20);
                      },
                    ),
                  )
                : Container(),
            selected == 2
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return cancelledActivity("SP0984982", "7 April, 2024");
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  Widget cancelledActivity(
    String id,
    String date,
  ) {
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
    );
  }

  Widget finishedActivity(String id, String date, double money, double kg) {
    return Card(
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
                    fontWeight: FontWeight.w600, color: AppColors.primaryColor))
          ],
        ),
      ),
    );
  }

  Widget bookingActivity(
    String id,
    String date,
    String time,
  ) {
    return Card(
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
