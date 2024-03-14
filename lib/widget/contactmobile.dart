import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/sms_icon_links.dart';
import 'package:personal_portfolio/widget/textField.dart';

import '../constants/colors.dart';
import 'dart:js' as js ;
class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      width: screenwidth,
      color: CustomColor.bgLight2,
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
      child:  Column(
        children: [
          Text("Get In Touch",style: TextStyle(
            fontSize: 35,
            color: CustomColor.whitePrimary,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 40,),
          ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 400,
          ),
            child: Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              children:[
                Flexible(
                child: InputFields(
                  hintTexts: 'Enter Your Name',
                ),
              ),
                Flexible(child: InputFields(
                  hintTexts: "Enter Your Email",
                ))
      ]
            ),

          ),
          const SizedBox(height: 20,),
          ConstrainedBox(constraints: const BoxConstraints(
            maxWidth: 400
          ),
            child: InputFields(
              hintTexts: "Enter Your Message",
              maxLiness: 10,
            ),
          ),
          const SizedBox(height: 20.0,),
          ConstrainedBox(
            constraints:const  BoxConstraints(
                maxWidth: 400
            ),
            child: SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                  backgroundColor:  CustomColor.yellowPrimary,
                ),
                onPressed: (){},
                child:const  Text("Get In Touch",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ConstrainedBox(constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: const Divider(
            color: Colors.black,
            height: 1,
          ),
          ),
          SizedBox(height: 20,),
          //Icon Buttons
          Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', [SmsLink.linkedin]);
                  },
                  child: Image.asset('asset/iconss/linkedin.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', [SmsLink.facebook]);
                  },
                  child: Image.asset('asset/iconss/facebook.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', [SmsLink.instagram]);
                  },
                  child: Image.asset('asset/iconss/insta.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', [SmsLink.github]);
                  },
                  child: Image.asset('asset/iconss/github.png',width: 25,)),
            ],
          ),
        ],
      )
    );
  }


}
