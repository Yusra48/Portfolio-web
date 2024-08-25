import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/consonants/Size.dart';
import 'package:portfolio_web/widgets/ContactSection.dart';
import 'package:portfolio_web/widgets/Desktopskills.dart';
import 'package:portfolio_web/widgets/MainMobileScreen.dart';
import 'package:portfolio_web/widgets/MainScreen.dart';
import 'package:portfolio_web/widgets/MobileSkills.dart';
import 'package:portfolio_web/widgets/Mobile_drawer.dart';
import 'package:portfolio_web/widgets/Mobile_header.dart';
import 'package:portfolio_web/widgets/Projectscreen.dart';
import '../widgets/Header_desktop.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController =ScrollController();
  final List<GlobalKey> navbarKey = List.generate(4, (index)=>GlobalKey());


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(onNavItemTap: (int navIndex){
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
            }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
       child:Column(
          children: [
            SizedBox(key: navbarKey.first),
            if (constraints.maxWidth >= kMinDesktopWidth)
               HeaderDesktop(onNavMenuTap: (int navIndex){
               scrollToSection(navIndex);
               })
            else
              MobileHeader(
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                onLogoTap: () {},
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainScreen()
            else
              const MainMobileScreen(),
            Container(
              key: navbarKey[1],
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('What I can do ?',
                      style: GoogleFonts.bonaNova(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      )),
                  if (constraints.maxWidth >= kMedDesktopWidth)
                    const Desktopskills()
                  else
                    const MobileSkills(),
                  const SizedBox(height: 30),
                   ProjectScreen(key: navbarKey[2],),
                  const SizedBox(height: 40),
                   ContactSection(key:navbarKey[3]),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      'Made by Yusra Asim with Flutter 3.10',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.whiteSecondary,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        ),
      );
    });
  }
  void scrollToSection(int navIndex){
    if(navIndex==4){
      return;
    }
    final keys=navbarKey[navIndex];
    Scrollable.ensureVisible(keys.currentContext!,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);

  }
}
