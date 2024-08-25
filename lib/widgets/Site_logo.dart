import 'package:flutter/material.dart';
import 'package:portfolio_web/consonants/Colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                  onTap: (){},
                child:Text('Yusra',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                        decoration: TextDecoration.underline)),);
  }
}