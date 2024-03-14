import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return   Container(
        height: screensize.height /1,
        //constraints: BoxConstraints(minHeight: 350.0),
        child: Stack(
            children:[
              Image.asset('asset/image/MAD2.jpeg',fit: BoxFit.cover,height: screenHeight,width: screenwidth,),
               Positioned(
                 top: 180,
                 left: 100,
                 child: Row(
                  children: [
                    const Text('Hello, My self ',style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: 1,
                        fontFamily: AutofillHints.creditCardType,
                        //fontStyle: FontStyle.italic
                    ),),
                    DefaultTextStyle(style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade900,
                      fontSize: 35,
                      fontStyle: FontStyle.italic
                    ), child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText('Ayush Soni')
                      ],
                    ))
                  ],
              ),
               ),
              // Positioned(
              //   top: 260,
              //   left: 120,
              //   child: DefaultTextStyle(style:const  TextStyle(
              //       color: Colors.deepPurple,
              //       letterSpacing: 1,
              //       fontSize: 32,
              //       fontWeight: FontWeight.bold
              //   ), child: AnimatedTextKit(
              //     repeatForever: true,
              //     animatedTexts: [
              //       TyperAnimatedText(
              //           "I'm a Mobile App Developer",
              //           speed: Duration(milliseconds: 100)
              //       )
              //     ],
              //   )),
              // ),
              Positioned(
                left: 110,
                top: 350,
                child: DefaultTextStyle(style:const  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.brown,
                ), child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      ' Welcome to my portfolio! I am a passionate and creative\n mobile application developer eager to embark on a journey\ninto the dynamic world of app development. With a solid\n foundation in programming languages and a knack for \nuser-centric design, I am committed to crafting intuitive and\n engaging mobile experiences.',
                      speed: Duration(milliseconds: 20),

                    )
                  ],
                )),
              ),
              Positioned(
                top: 540,
                left: 200,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(20),
                  onPressed:(){},
                  color: Colors.white,
                  child: const Text("Download Resume",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              )
            ]
        )
    );
  }
}
