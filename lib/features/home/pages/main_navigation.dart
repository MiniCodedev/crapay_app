import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/home/pages/home_page.dart';
import 'package:crapay_app/features/home/pages/manage_bookings_page.dart';
import 'package:crapay_app/features/home/pages/notification_page.dart';
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
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavButton(() {
              setState(() {
                selectedPage = 0;
              });
            }, Icons.home_outlined, 0),
            bottomNavButton(() {
              setState(() {
                selectedPage = 1;
              });
            }, Icons.notifications_none_rounded, 1),
            bottomNavButton(() {
              setState(() {
                selectedPage = 2;
              });
            }, Icons.history_rounded, 2),
          ],
        ),
      ),
    );
  }

  Widget bottomNavButton(void Function() onPressed, IconData icon, int index) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: index == selectedPage ? AppColors.primaryColor : null,
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          icon,
          color:
              index == selectedPage ? AppColors.backgroundColor : Colors.black,
        ),
      ),
    );
  }
}
