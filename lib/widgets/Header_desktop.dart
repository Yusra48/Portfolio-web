import 'package:flutter/material.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/consonants/nav_Titles.dart';
import 'package:portfolio_web/styles/Styles.dart';
import 'package:portfolio_web/widgets/Site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.maxFinite,
            decoration:kHeaderDecoration,
            child: Row(
              children: [
               SiteLogo(onTap: (){}),
                Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: TextButton(
                          onPressed: () {
                            onNavMenuTap(i);
                          },
                          child: Text(navTitles[i],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColor.whitePrimary)))),
              ],
            ),
          );
  }
}