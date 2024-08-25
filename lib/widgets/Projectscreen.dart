import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/utils/Projects_utils.dart';
import 'package:portfolio_web/widgets/Projects_desk.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        width: screenWidth,
        padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Work Projects',
              style: GoogleFonts.bonaNova(
                textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              )),
          SizedBox(height: 30),
          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: Wrap(spacing: 25, runSpacing: 25, children: [
                for (int i = 0; i < flutterProjects.length; i++)
                  ProjectsCard(projectUtils: flutterProjects[i])
              ]))
        ]));
  }
}
