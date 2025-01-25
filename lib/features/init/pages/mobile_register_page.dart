import 'package:crapay_app/core/common/basic_button.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/init/pages/otp_verify_page.dart';
import 'package:flutter/material.dart';

class MobileRegisterPage extends StatefulWidget {
  const MobileRegisterPage({super.key});

  @override
  State<MobileRegisterPage> createState() => _MobileRegisterPageState();
}

class _MobileRegisterPageState extends State<MobileRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your phone number ",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 100,
              ),
              inputTextField(),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "A 4 digit OTP will be sent via SMS to verify your phone number",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 150,
              ),
              BasicButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OtpVerifyPage(),
                    ));
                  },
                  text: "Continue"),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputTextField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      cursorColor: Colors.grey,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(left: 10, right: 5), // Adjust padding as needed
          child: Row(
            mainAxisSize: MainAxisSize.min, // Ensures prefix doesn't expand
            children: [
              Text(
                '+91',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 1,
                height: 32,
                child: ColoredBox(color: Color.fromRGBO(153, 153, 153, 1)),
              ),
            ],
          ),
        ),
        prefixIconConstraints: BoxConstraints(
            minWidth: 0, minHeight: 0), // Ensures prefix size remains minimal
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: 'Enter your number',
        hintStyle: TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
      ),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}
