import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/consonants/ContactLinks.dart';
import 'package:portfolio_web/consonants/Size.dart';
import 'package:portfolio_web/widgets/CustomTextField.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: GoogleFonts.bonaNova(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildEmailInputDesktop();
                } else {
                  return buildEmailInputMobile();
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 10,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Get in Touch',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {js.context.callMethod('open', [SnSLinks.github]);},
                child: Image.asset('assets/GitHub.png', width: 28),
              ),
              InkWell(
                onTap: () {js.context.callMethod('open', [SnSLinks.linkedin]);},
                child: Image.asset('assets/linkedin.png', width: 28),
              ),
              InkWell(
                onTap: () {js.context.callMethod('open', [SnSLinks.instagram]);},
                child: Image.asset('assets/instagram.png', width: 28),
              ),
              InkWell(
                onTap: () {js.context.callMethod('open', [SnSLinks.facebook]);},
                child: Image.asset('assets/facebook.png', width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildEmailInputDesktop() {
    return const Row(
      children: [
        Expanded(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Widget buildEmailInputMobile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextField(
          hintText: "Your Name",
        ),
        SizedBox(height: 20),
        CustomTextField(
          hintText: "Your Email",
        ),
      ],
    );
  }
}
