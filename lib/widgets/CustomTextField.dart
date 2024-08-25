import 'package:flutter/material.dart';
import 'package:portfolio_web/consonants/Colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  const CustomTextField({
    Key? key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: _inputBorder,
        enabledBorder: _inputBorder,
        border: _inputBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.hintDark),
      ),
    );
  }

  OutlineInputBorder get _inputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
