import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
class MianDesktop extends StatelessWidget {
  const MianDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      height: screensize.height /1,
      //constraints: BoxConstraints(minHeight: 350.0),
      child: Stack(
          children:[
        Image.asset('asset/image/MAD.jpg',fit: BoxFit.cover,height: screenHeight,width: screenwidth,),
            const Positioned(
              top: 200,
                left: 100,
                child: Text('Hello, My self Ayush soni',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: 1,
                  fontFamily: AutofillHints.creditCardType,
                  fontStyle: FontStyle.italic
                ),)),
            Positioned(
              top: 260,
              left: 120,
              child: DefaultTextStyle(style:const  TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontSize: 32,
                fontWeight: FontWeight.bold
              ), child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText(
                      "I'm a Mobile App Developer",
                    speed: Duration(milliseconds: 100)
                  )
                ],
              )),
            ),
            Positioned(
              left: 110,
              top: 320,
              child: DefaultTextStyle(style:const  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
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
