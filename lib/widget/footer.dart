import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.scaffoldBg,
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("Made by Ayush soni with flutter 3.10",style: TextStyle(
        fontWeight: FontWeight.w400,
        color: CustomColor.whitePrimary,
        fontSize: 17,
      ),),
    );
  }
}
