import 'package:flutter/material.dart';

import 'colors.dart';
class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(" AS ",style: TextStyle(
          fontFamily: AutofillHints.creditCardType,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary
      ),),
    );
  }
}
