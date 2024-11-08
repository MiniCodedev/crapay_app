import 'package:flutter/material.dart';

class ManageBookingsPage extends StatefulWidget {
  const ManageBookingsPage({super.key});

  @override
  State<ManageBookingsPage> createState() => _ManageBookingsPageState();
}

class _ManageBookingsPageState extends State<ManageBookingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("ManageBookingPage"),
    );
  }
}
