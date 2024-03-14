import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';

import '../model/modelsclass1.dart';
class SkillsMobile extends StatelessWidget {
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
   SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      key: navbarKeys[1],
      width: screenwidth,
      color: CustomColor.bgLight2,
      child: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text("Technical Skills",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: CustomColor.whitePrimary,
              fontStyle: FontStyle.italic,
              fontFamily: AutofillHints.creditCardType
            ),),
                SizedBox(height: 60,),
                ConstrainedBox(constraints: const BoxConstraints(
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
                            color: CustomColor.bgLight1,
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
            SizedBox(height: 50,),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: [
                for(int i = 0; i < languageData.length; i++)
                  Chip(
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: CustomColor.bgLight1,
                    label: Text(languageData[i].titles.toString(),style: const TextStyle(
                        color: CustomColor.whitePrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                    avatar: Image.asset(languageData[i].imagee.toString()),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
