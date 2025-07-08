import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Skills/skill_progress_section.dart';

class WebViewSkillPage extends StatelessWidget {
  const WebViewSkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          // ==========================================
          // HEADER SECTION
          // ==========================================
          Header(title: "Skills"),
          // ==========================================
          // DESCRIPTION SECTION
          // ==========================================
          SkillsDescriptionWidget(),
          // ==========================================
          // PROGRESS INDICATOR SECTION
          // ==========================================
          SizedBox(height: 10),
          Row(
            spacing: 15,
            children: [
              Flexible(
                child: Column(
                  children: [
                    for (
                      int i = 0;
                      i < skillProgressSectionName.length / 2;
                      i++
                    )
                      SkillProgressSection(
                        skill: skillProgressSectionName[i].keys.first,
                        level: skillProgressSectionName[i].values.first,
                      ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    for (
                      var i = skillProgressSectionName.length / 2;
                      i < skillProgressSectionName.length;
                      i++
                    )
                      SkillProgressSection(
                        skill: skillProgressSectionName[i.toInt()].keys.first,
                        level: skillProgressSectionName[i.toInt()].values.first,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillsDescriptionWidget extends StatelessWidget {
  const SkillsDescriptionWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    
    bool smallerScreen = MediaQuery.of(context).size.width < 600;
    return AutoSizeText(
      skillDescription,
      minFontSize: 10,
      style: FontTextStyle.textfont.copyWith(
        color: CustomeColor.headerTextColor,
        fontSize: smallerScreen ? 10 : 12,
      ),
    );
  }
}
