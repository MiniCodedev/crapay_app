import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:crapay_app/features/profile/widgets/menu_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
            )),
        backgroundColor: Colors.white,
        title: const Text("Profile",
            style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greybackgroundColor,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: ListTile(
                leading: const SizedBox(
                  width: 60,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 70,
                        child: Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          maxRadius: 13,
                          child: Icon(
                            Icons.edit_sharp,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: const Text("Veera Kumar",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(
                  "veera206",
                  style: TextStyle(
                      color: AppColors.greyColor, fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                        maxRadius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: AppColors.primaryColor,
                        ))),
              ),
            ),
            const MenuTile(
              text: "My booking's",
              icon: Icons.check_circle_outline_outlined,
            ),
            const MenuTile(
              text: "Notification",
              icon: Icons.notifications_none_outlined,
            ),
            const MenuTile(
              text: "Support",
              icon: Icons.headphones_outlined,
            ),
            const MenuTile(
              text: "History",
              icon: Icons.work_history_outlined,
            )
          ],
        ),
      ),
    );
  }
}
