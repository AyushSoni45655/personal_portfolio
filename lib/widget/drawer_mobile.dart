import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class MobileDrawer extends StatelessWidget {
   const MobileDrawer({super.key ,required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: CustomColor.scaffoldBg,

      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(CupertinoIcons.multiply_circle_fill,size: 30,color: CustomColor.whitePrimary,)),
            ),
          ),
          for(int i = 0 ; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              leading: Icon(navIcons[i]),
              iconColor: Colors.white,
              title: Text(navTitles[i]),
              onTap: (){
                onNavItemTap(i);
              },
              titleTextStyle:const  TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
        ],
      ),
    );
  }
}
