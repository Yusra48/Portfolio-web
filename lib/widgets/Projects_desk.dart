import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/utils/Projects_utils.dart';
import 'package:portfolio_web/pages/VideoThumbnail.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key, required this.projectUtils});

  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: CustomColor.bgLight2,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        VideoThumbnail(
          thumbnailPath: projectUtils.thumbnailPath,
          videoPath: projectUtils.videoPath,
          title: projectUtils.title,
          subtitle: projectUtils.subtitle,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Text(
            projectUtils.title,
            style: GoogleFonts.bonaNova(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
          child: Text(
            projectUtils.subtitle,
            style: GoogleFonts.bonaNova(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(padding: EdgeInsets.only(left: 10,right:10),
       child: Row(
          children: [
            Text(
              'Available on:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: CustomColor.yellowPrimary,
              ),
            ),
            SizedBox(width: 60),
            Image.asset('assets/android.png', width: 20),
            SizedBox(width: 8),
            Image.asset('assets/ios.png', width: 20),
            SizedBox(width: 8),
            Image.asset('assets/web.png', width: 20),
          ],
        ),
        ),
        SizedBox(height: 5),
      ]),
    );
  }
}
