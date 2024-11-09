import 'package:crapay_app/common/basic_button.dart';
import 'package:crapay_app/common/basic_textfield.dart';
import 'package:crapay_app/config/theme/app_colors.dart';
import 'package:crapay_app/pages/select_location_page.dart';
import 'package:crapay_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              const Text(
                "Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please enter email and password for login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              BasicTextfield(
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BasicTextfield(
                hintText: "Password",
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
                      "Don’t have account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                      },
                      child: Text(
                        "Signup",
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
                      builder: (context) => const SelectLocationPage(),
                    ));
                  },
                  text: "Login"),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
