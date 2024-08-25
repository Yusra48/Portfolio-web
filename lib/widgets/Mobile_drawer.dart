import 'package:flutter/material.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/consonants/nav_Titles.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});

  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
            child:Padding(
              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
              child: CircleAvatar(
                backgroundColor: CustomColor.bgLight2,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)),
              ),
            ),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
                onTap: () {
                  onNavItemTap(i);
                },
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i]),
              )
          ],
        ),
      );
  }
}