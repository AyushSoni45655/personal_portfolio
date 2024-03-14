import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/model/modelsclass1.dart';
class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 30),
      width: screenwidth,
      color: CustomColor.scaffoldBg,
      child: Column(
        children: [
          const Center(child: Text("Work Projects",style: TextStyle(
            color: CustomColor.whitePrimary,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),),),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(constraints:const  BoxConstraints(
                maxWidth: 800,
                minWidth: 200
              ),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 16.0,
                  children: [
                    for(int i = 0; i < projectData.length; i++)
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Stack(
                          children: [
                            Container(
                              height: 120,
                              width:screenwidth,
                              color: Colors.redAccent,
                              child: Image.asset(projectData[i].image1.toString(),fit: BoxFit.cover,),
                            ),
                            Positioned(
                              top: 120,
                              child: Container(
                                width: screenwidth,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: CustomColor.bgLight2
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(projectData[i].title1.toString(),style:const  TextStyle(
                                        color: CustomColor.whitePrimary,
                                        fontFamily: AutofillHints.creditCardType,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(projectData[i].subTitle1.toString(),style: TextStyle(
                                        fontSize: 13
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 220,
                              child: Container(
                                height: 30,
                                width: screenwidth,
                                decoration: const BoxDecoration(
                                  color: CustomColor.bgLight1,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)
                                  )
                                ),
                                child:  Row(
                                  children: [
                                     Padding(
                                      padding:  EdgeInsets.all(5.0),
                                      child: Text("Available On :",style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),),
                                    ),
                                    SizedBox(width:200 ,),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1,
                                            spreadRadius: 1,
                                            color: Colors.white.withOpacity(0.2)
                                          )
                                        ]
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4),
                                        child: InkWell(
                                          onTap: (){

                                          },
                                            child: Icon(CupertinoIcons.globe,size: 20,))
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),

    );
  }
}
