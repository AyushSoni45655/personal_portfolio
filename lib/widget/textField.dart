import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
class InputFields extends StatelessWidget {
   InputFields({super.key, this.iconData,this.controllerd,this.hintTexts,this.maxLiness});
  final TextEditingController? controllerd;
  String? hintTexts;
   int? maxLiness = 1;
  final IconData ?iconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: CustomColor.whitePrimary,
        fontSize: 17,
      ),
      controller: controllerd,
      maxLines: maxLiness,
      decoration: InputDecoration(
        hintText: hintTexts,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: const EdgeInsets.all(20),

      ),
    );
  }
}
