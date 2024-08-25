import 'package:flutter/material.dart';
import 'package:portfolio_web/consonants/Colors.dart';
import 'package:portfolio_web/consonants/Skillsconst.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(platformItems[i]["img"], width: 26),
                title: Text(
                  platformItems[i]["title"],
                ),
              ),
            ),
          SizedBox(height: 50),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillsItems.length; i++)
                Chip(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  backgroundColor: CustomColor.bgLight2,
                  label: Text(skillsItems[i]["title"]),
                  avatar: Image.asset(skillsItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
