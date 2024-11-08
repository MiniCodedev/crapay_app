import 'package:crapay_app/common/basic_button.dart';
import 'package:crapay_app/common/basic_textfield.dart';
import 'package:crapay_app/core/assets/app_vectors.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({super.key});

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              SvgPicture.asset(AppVectors.deliveryAddress),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Let us know your location for convenient disposal pickups",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              BasicTextfield(
                hintText: "Select your location",
                prefixIcon: Icon(
                  Icons.location_on,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              BasicButton(onPressed: () {}, text: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}
