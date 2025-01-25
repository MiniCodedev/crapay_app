import 'package:crapay_app/core/common/basic_button.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/init/pages/initialize_page.dart';
import 'package:flutter/material.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "Select your language",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                englishLanguageButton(context),
                const SizedBox(
                  width: 20,
                ),
                tamilLanguageButton(context)
              ],
            ),
            const Spacer(),
            BasicButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const InitializePage(),
                ));
              },
              text: "Continue",
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget tamilLanguageButton(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width / 2.5,
          height: 76,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF339605),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Stack(
            children: [
              Positioned(
                left: 18,
                top: 38,
                child: SizedBox(
                  width: 75,
                  child: Text(
                    'Tamil',
                    style: TextStyle(
                      color: Color(0xFFE1E1E1),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: -3,
                child: SizedBox(
                  width: 49,
                  height: 59,
                  child: Opacity(
                    opacity: 0.30,
                    child: Text(
                      'த',
                      style: TextStyle(
                        color: Color(0xFFE1E1E1),
                        fontSize: 60,
                        fontFamily: 'Noto Sans Tamil',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget englishLanguageButton(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width / 2.5,
          height: 76,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Stack(
            children: [
              Positioned(
                left: 18,
                top: 38,
                child: SizedBox(
                  width: 75,
                  child: Text(
                    'English',
                    style: TextStyle(
                      color: Color(0xFFE1E1E1),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: -15,
                child: SizedBox(
                  width: 10,
                  child: Opacity(
                    opacity: 0.30,
                    child: Text(
                      'E',
                      style: TextStyle(
                        color: Color(0xFFE1E1E1),
                        fontSize: 70,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
