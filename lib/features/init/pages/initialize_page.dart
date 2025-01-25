import 'package:crapay_app/core/common/basic_button.dart';
import 'package:crapay_app/core/assets/app_vectors.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/init/pages/mobile_register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitializePage extends StatefulWidget {
  const InitializePage({super.key});

  @override
  State<InitializePage> createState() => _InitializePageState();
}

class _InitializePageState extends State<InitializePage> {
  PageController pageController = PageController();
  List<Map<String, dynamic>> initdetails = [
    {
      "title": "Prevent Pollution",
      "image": AppVectors.group1Vector,
      "desc": "An initiative to save our environment from your door step"
    },
    {
      "title": "Schedule free pickup",
      "image": AppVectors.group2Vector,
      "desc": "We arrive at your door step at your convenience"
    },
    {
      "title": "Earn from trash",
      "image": AppVectors.group3Vector,
      "desc": "Instant payment for the disposal Quantity of waste"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView.builder(
          itemCount: initdetails.length,
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: width,
                    width: width,
                    child: SvgPicture.asset(initdetails[index]["image"]!)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  initdetails[index]["title"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  initdetails[index]["desc"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                index == 2
                    ? BasicButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const MobileRegisterPage(),
                          ));
                        },
                        text: "Get Started")
                    : nextButton(() {
                        if (index != 2) {
                          pageController.jumpToPage(index + 1);
                        }
                      }),
                const Spacer()
              ],
            );
          },
        ),
      ),
    );
  }

  Widget nextButton(void Function() onPressed) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.white,
      style: ButtonStyle(
          alignment: Alignment.center,
          fixedSize: const WidgetStatePropertyAll(Size(50, 50)),
          iconSize: const WidgetStatePropertyAll(25),
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor)),
    );
  }
}
