import 'package:crapay_app/core/common/basic_button.dart';
import 'package:crapay_app/core/assets/app_vectors.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/auth/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({super.key});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
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
                height: 100,
              ),
              SvgPicture.asset(AppVectors.otpVector),
              const SizedBox(
                height: 10,
              ),
              Text(
                "OTP",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "A 4 digit code has been sent  to your number",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              OtpPinField(
                fieldWidth: 50,
                textInputAction: TextInputAction.done,
                autoFillEnable: false,
                onSubmit: (text) {},
                onChange: (text) {},
                otpPinFieldStyle: const OtpPinFieldStyle(
                  activeFieldBorderColor: Colors.grey,
                  defaultFieldBorderColor: Colors.grey,
                  filledFieldBorderColor: Colors.grey,
                  fieldBorderWidth: 1,
                  fieldBorderRadius: 8,
                ),
                maxLength: 4,
                cursorColor: Colors.grey,
                cursorWidth: 2,
                mainAxisAlignment: MainAxisAlignment.center,
                otpPinFieldDecoration: OtpPinFieldDecoration.custom,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Didn’t receive the code?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "RESEND OTP",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              BasicButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ));
                  },
                  text: "Send OTP"),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
