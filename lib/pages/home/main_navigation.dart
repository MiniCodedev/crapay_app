import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/pages/home/home_page.dart';
import 'package:crapay_app/pages/home/manage_bookings_page.dart';
import 'package:crapay_app/pages/home/notification_page.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedPage = 0;
  List pages = [
    const HomePage(),
    const NotificationPage(),
    const ManageBookingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.greybackgroundColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavButton(() {
              setState(() {
                selectedPage = 0;
              });
            }, Icons.history_rounded, 0),
            bottomNavButton(() {
              setState(() {
                selectedPage = 1;
              });
            }, Icons.home_outlined, 1),
            bottomNavButton(() {
              setState(() {
                selectedPage = 2;
              });
            }, Icons.notifications_none_rounded, 2),
          ],
        ),
      ),
    );
  }

  Widget bottomNavButton(void Function() onPressed, IconData icon, int index) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: index == selectedPage ? AppColors.primaryColor : null,
            borderRadius: BorderRadius.circular(20)),
        child: Icon(
          icon,
          color:
              index == selectedPage ? AppColors.backgroundColor : Colors.black,
        ),
      ),
    );
  }
}
