import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/model/modelsclass1.dart';
class SkillsDesktop extends StatelessWidget {
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      key: navbarKeys[1],
      width: screenwidth,
      padding:const  EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child:  Column(
        children: [
          const Text('Technical Skills',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: CustomColor.whitePrimary
          ),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             ConstrainedBox(constraints: BoxConstraints(
               maxWidth: 450
             ),
               child: Wrap(
                 spacing: 5.0,
                 runSpacing: 5.0,
                 children: [
                   for(int i = 0; i < platformData.length; i++)
                   Container(
                     width: 200,
                     decoration: BoxDecoration(
                       color: CustomColor.bgLight2,
                       borderRadius: BorderRadius.circular(7),
                     ),
                     child: ListTile(
                       leading: Image.asset(platformData[i].image.toString()),
                       title: Text(platformData[i].title.toString()),
                     ),
                   )
                 ],
               ),

             ),
             const  SizedBox(width: 50,),
              Flexible(child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 500
                ),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    for(int i = 0; i < languageData.length; i++)
                      Chip(
                        padding: EdgeInsets.all(20),
                        backgroundColor: CustomColor.bgLight2,
                        label: Text(languageData[i].titles.toString(),style: TextStyle(
                          color: CustomColor.whitePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                        avatar: Image.asset(languageData[i].imagee.toString()),
                      )
                  ],
                ),
              ))

            ],
          ),
        ],
      ),
    );
  }
}
