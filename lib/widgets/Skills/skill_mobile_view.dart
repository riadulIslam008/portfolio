import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Skills/skill_progress_section.dart';
import 'package:portfolio_app/widgets/Skills/skill_webview.dart';

class MobileViewSkillPage extends StatelessWidget {
  const MobileViewSkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Header(title: "Skills"),
          SkillsDescriptionWidget(),
          for (int i = 0; i < skillProgressSectionName.length; i++)
            SkillProgressSection(
              skill: skillProgressSectionName[i].keys.first,
              level: skillProgressSectionName[i].values.first,
            ),
        ],
      ),
    );
  }
}
