import 'dart:async';

import 'package:crapay_app/core/assets/app_vectors.dart';
import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  int currentPoster = 0;
  Timer? timer;
  List<Map> posterContain = [
    {
      "image": AppVectors.poster1,
      "content": "Content Changed",
    },
    {
      "image": AppVectors.poster2,
      "content": "Choose your disposal category to help save the environment."
    },
    {
      "image": AppVectors.poster3,
      "content": "Choose your disposal category to help save the environment."
    },
  ];

  animatePage() {
    if (currentPoster == 2) {
      controller.animateToPage(currentPoster,
          curve: Curves.easeInOut, duration: const Duration(milliseconds: 500));
      currentPoster = 0;
    } else {
      controller.animateToPage(currentPoster,
          curve: Curves.easeInOut, duration: const Duration(milliseconds: 500));
      currentPoster += 1;
    }
  }

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      animatePage();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hi Veera",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: posterContain.length,
                itemBuilder: (context, index) {
                  return posterWidget(posterContain[index]["image"],
                      posterContain[index]["content"]);
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Select Weight range",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 80,
                ),
                itemCount: 9,
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.greybackgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "${index * 5}-${(index + 1) * 5}Kg",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget posterWidget(String imagePath, String content) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.greybackgroundColor,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(imagePath),
            const SizedBox(
              width: 13,
            ),
            Expanded(
              child: Text(
                content,
                style: const TextStyle(color: Color(0xff7F7F7F)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
