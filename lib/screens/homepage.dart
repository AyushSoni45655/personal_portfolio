import 'package:flutter/material.dart';
import 'dart:js'as js;
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/constants/desktopwindow.dart';
import 'package:personal_portfolio/constants/header_mobile.dart';
import 'package:personal_portfolio/constants/sms_icon_links.dart';
import 'package:personal_portfolio/widget/aboutDesktop.dart';
import 'package:personal_portfolio/widget/aboutMobile.dart';
import 'package:personal_portfolio/widget/contactDesktop.dart';
import 'package:personal_portfolio/widget/contactmobile.dart';
import 'package:personal_portfolio/widget/drawer_mobile.dart';
import 'package:personal_portfolio/widget/educationDesktop.dart';
import 'package:personal_portfolio/widget/educationMobile.dart';
import 'package:personal_portfolio/widget/footer.dart';
import 'package:personal_portfolio/widget/mainDesktop.dart';
import 'package:personal_portfolio/widget/mainMobile.dart';
import 'package:personal_portfolio/widget/projectDesktop.dart';
import 'package:personal_portfolio/widget/projectMobile.dart';
import 'package:personal_portfolio/widget/skillsDesktop.dart';
import 'package:personal_portfolio/widget/skillsMobile.dart';

import '../constants/size.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey> navbarKeys = List.generate(6, (index) => GlobalKey());
  final screollController = ScrollController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context,constraints){
        return  Scaffold(
            key: scaffoldKey,
            endDrawer: constraints.maxWidth >= kMinWidthDesktop? null: MobileDrawer(onNavItemTap: (int navIndex){
              // call function
              scaffoldKey.currentState?.closeDrawer();
              scrollToSection(navIndex);
            },),
            backgroundColor: CustomColor.scaffoldBg,
            body: SingleChildScrollView(
              controller: screollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(key: navbarKeys.first,),
                  // for Desktop Window
                  if(constraints.maxWidth >= kMinWidthDesktop)
                     DesktopWindow(
                       onNavMenuTap: (int navIndex){
                         //call function
                         scrollToSection(navIndex);
                       },
                     )
                  else
                  HeaderMobile(
                    onLogoTap: (){

                    },
                    onMenuTap: (){
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                  if(constraints.maxWidth >= kMinWidthDesktop)
                 const MianDesktop()
                else
               const  MainMobile(),
                 // about us section
                  if(constraints.maxWidth >= kMinWidthDesktop)
                  AboutDesktop(key: navbarKeys[5],)
                  else
                  AboutMobile(key: navbarKeys[5],),

                  if(constraints.maxWidth >= kMinWidthDesktop)
                 SkillsDesktop(key: navbarKeys[1],)
                else
                 SkillsMobile(key: navbarKeys[1],),


                  // Project section
                  //Desktop project
                  if(constraints.maxWidth >= kMinWidthDesktop)
                   ProjectDesktop(key: navbarKeys[2],)
                  else
                  //desktop Mobile
                   ProjectMobile(key: navbarKeys[2],),
                  // Contact section
                  if(constraints.maxWidth >= kMinWidthDesktop)
                   ContactDesktop(key: navbarKeys[3],)
                  else
                     ContactMobile(key: navbarKeys[3],),
                  //For Mobile contact  sections
                  //edication section
                  if(constraints.maxWidth >= kMinWidthDesktop)
                   Education(key: navbarKeys[4],)
                  else
                   EducationMobile(key: navbarKeys[4],),
                  // Footer Sections
                  const  AppFooter(),

                ],
              ),
            )
        );
      },

    );
  }
  void scrollToSection (int navIndex){
    // if(navIndex == 4){
    //   //open a blog page
    //   //js.context.callMethod('open',[SmsLink.Blog]);
    //   return;
    // }
    final Key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
        Key.currentContext!,
        duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut
    );
  }
}
