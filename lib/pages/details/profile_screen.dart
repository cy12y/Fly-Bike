import 'package:flutter/material.dart';
import 'package:screeen1/pages/details/invest.dart';
import 'package:screeen1/theme.dart';
import 'profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("your Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "lib/images/profile_image.png",
                ),
              ),
            ),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Invest with us",
              icon: Icons.attach_money_outlined,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Invest()));
              },
            ),
            ProfileMenu(
              text: "My Account",
              icon: Icons.person_outline,
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: Icons.notifications_outlined,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: Icons.settings_outlined,
              press: () {},
            ),
            // ProfileMenu(
            //   text: "Help Center",
            //   icon: Icons.help_outline_outlined,
            //   press: () {},
            // ),
            ProfileMenu(
              text: "Log Out",
              icon: Icons.logout,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
