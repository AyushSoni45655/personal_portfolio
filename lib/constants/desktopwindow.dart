import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/sitelogo.dart';
import 'package:personal_portfolio/styles/style.dart';

import 'colors.dart';
import 'nav_items.dart';
class DesktopWindow extends StatelessWidget {
   const DesktopWindow({super.key,required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
      height: 60,
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
         //site logo
          SiteLogo(onTap: (){}),
         const  Spacer(),
          for(int i = 0; i <navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: TextButton(
                  onPressed: (){
                    onNavMenuTap(i);
                  },
                  child: Text(navTitles[i],style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                      fontSize: 17,
                      fontFamily: AutofillHints.creditCardType
                  ))
              ),
            )
        ],
      ),
    );
  }
}
