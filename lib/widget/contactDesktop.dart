import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/sms_icon_links.dart';
import 'package:personal_portfolio/widget/textField.dart';
import 'dart:js'as js;
import '../constants/colors.dart';
class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      width: screenwidth,
      color: CustomColor.bgLight2,
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
      child: Column(
        children: [
          const Text("Get In Touch",style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
            letterSpacing: 1,
          ),),
          const SizedBox(height: 50,),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Row(
              children: [
                Flexible(
                  child: InputFields(
                    hintTexts: "Enter Your Name",
                    iconData: CupertinoIcons.person_alt,
                  ),
                ),
                const SizedBox(width: 20,),
                Flexible(
                  child: InputFields(
                    hintTexts: "Enter Your Email",
                    iconData: CupertinoIcons.mail,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: 700
            ),
            child: InputFields(
              hintTexts: 'Enter Your Message',
              maxLiness: 10,
            ),
          ),
          const SizedBox(height: 30,),
          ConstrainedBox(
            constraints:const  BoxConstraints(
                maxWidth: 700
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
          const SizedBox(height: 30,),
          ConstrainedBox(constraints:const  BoxConstraints(
            maxWidth: 300,
          ),
            child: const Divider(
              color: Colors.black,
              height: 1,
            ),
          ),
          const SizedBox(height: 30,),
          //Icon Buttons
          Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SmsLink.linkedin]);
                  },
                  child: Image.asset('asset/iconss/linkedin.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SmsLink.instagram]);
                  },
                  child: Image.asset('asset/iconss/insta.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SmsLink.facebook]);
                  },
                  child: Image.asset('asset/iconss/facebook.png',width: 25,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SmsLink.github]);
                  },
                  child: Image.asset('asset/iconss/github.png',width: 25,)),
            ],
          ),
        ],
      ),
    );
  }
}
