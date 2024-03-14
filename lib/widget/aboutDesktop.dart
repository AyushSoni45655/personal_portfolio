import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/model/modelsclass1.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
        width: screenwidth,
        color: Colors.black12,
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: Flexible(
            child: Container(
                width: screenwidth,
                margin: const EdgeInsets.fromLTRB(30, 40, 30, 40),
                decoration: const BoxDecoration(color: Colors.white12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('About me',style:  TextStyle(
                      color: Colors.lightGreen,
                      fontFamily: AutofillHints.creditCardType,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                'Hello guys!!!',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    fontFamily: AutofillHints.creditCardType,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              DefaultTextStyle(
                                  style: const TextStyle(color: Colors.black87),
                                  child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                            "I am  Ayush Soni, I  am  passionate and creative Mobile Application Developer with a strong desire to create visually appealing and user-friendly mobile application. "
                                            "With a solid foundation in Flutter, Dart, and Get X state management, I'm eager to contribute "
                                            " my skills to crafting modern, responsive and dynamic mobile applications\n\n"
                                            'During my journey as a learner, I have been fascinated by '
                                            'the power of frontend technologies to bring ideas to life on '
                                            'the mobile application. I am dedicated to staying up-to-date with the new '
                                            'trends and technology, and I am excited to dive into frameworks '
                                            'like Flutter and explore the ever-evolving world of mobile app development.')
                                      ])),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 40, 30, 40),
                          height: 270,
                          width: 300,
                          decoration: BoxDecoration(
                              //color: CustomColor.whiteSecondary.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(270),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.6),
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                )
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset('asset/image/boy Cartoon.webp',
                                fit: BoxFit.cover, alignment: Alignment.center),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    DefaultTextStyle(style:const  TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: AutofillHints.addressCity,
                      fontWeight: FontWeight.bold
                    ), child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText('Internship / Training')
                      ],
                    )),
                    const SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 900,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: EducationData.length,
                          shrinkWrap: true,
                          physics: const  NeverScrollableScrollPhysics(),
                          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(20),
                              height: 80,
                              width: 400,
                              decoration:   BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.white.withOpacity(0.4),
                                    offset: Offset(0,4)
                                  )
                                ]
                                
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(EducationData[index].title1.toString(),style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: AutofillHints.creditCardType,
                                        letterSpacing: 1,
                                      ),),
                                      Text(EducationData[index].date.toString(),style: const TextStyle(
                                        fontFamily: AutofillHints.creditCardType,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                         color: Colors.black45,
                                      ))
                                    ],
                                  ),
                                  const SizedBox(height: 15,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(EducationData[index].title2.toString(),style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      fontFamily: AutofillHints.creditCardType,
                                    )),
                                  ),
                                  const SizedBox(height: 15,),
                                  Text(EducationData[index].description.toString(),style:const TextStyle(
                                    fontFamily: AutofillHints.creditCardType,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45,
                                  ),),
                                ],
                              ),
                            );
                          },
                      ),
                    ),
                    SizedBox(height: 40,),
                  ],
                )),
          ),
        ));
  }
}
