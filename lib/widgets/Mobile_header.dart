import 'package:flutter/material.dart';
import 'package:portfolio_web/styles/Styles.dart';
import 'package:portfolio_web/widgets/Site_logo.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key,this.onLogoTap,this.onMenuTap});
  final VoidCallback?onLogoTap;
  final VoidCallback?onMenuTap;


  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 50.0,
          margin: EdgeInsets.fromLTRB(40, 5,20, 5),
          decoration: kHeaderDecoration,
          child: Row(children: [
            SiteLogo(onTap: onLogoTap),
            Spacer(),
            IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
            SizedBox(width: 20),
          ],),
        );
  }
}