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
  List<Map> posterContain = [
    {"image": AppVectors.poster1, "content": "Content Changed"},
    {
      "image": AppVectors.poster2,
      "content": "Choose your disposal category to help save the environment."
    },
    {
      "image": AppVectors.poster3,
      "content": "Choose your disposal category to help save the environment."
    },
  ];

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
                itemCount: posterContain.length,
                itemBuilder: (context, index) {
                  return posterWidget(posterContain[index]["image"],
                      posterContain[index]["content"]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget posterWidget(String imagePath, String content) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.greybackgroundColor,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(imagePath),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              content,
              style: const TextStyle(color: Color(0xff7F7F7F)),
            ),
          )
        ],
      ),
    );
  }
}
