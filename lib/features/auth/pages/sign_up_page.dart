import 'package:crapay_app/core/common/basic_button.dart';
import 'package:crapay_app/core/common/basic_textfield.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/auth/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool visibility = true;
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
              BasicTextfield(
                hintText: "Name",
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BasicTextfield(
                hintText: "Contact Number",
                prefixIcon: Icon(
                  Icons.local_phone_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BasicTextfield(
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BasicTextfield(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BasicTextfield(
                hintText: "Confirm Password",
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: AppColors.primaryColor,
                ),
                obscureText: visibility,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  icon: visibility
                      ? Icon(
                          Icons.visibility_off,
                          color: AppColors.primaryColor,
                        )
                      : Icon(
                          Icons.visibility,
                          color: AppColors.primaryColor,
                        ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              BasicButton(onPressed: () {}, text: "Sign up")
            ],
          ),
        ),
      ),
    );
  }
}
