import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/description_text_view.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Resume/flutter_advance_course_section.dart';
import 'package:portfolio_app/widgets/Resume/university_degree_details.dart';

class ResumeWebview extends StatelessWidget {
  const ResumeWebview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==========================================
          // Heading SECTION
          // ==========================================
          Header(title: resume),
          SizedBox(height: 10),
          // ==========================================
          // Heading SECTION
          // ==========================================
          DescriptionTextView(descriptionText: resumeDescriptionText),
          // ==========================================
          // Education SECTION
          // ==========================================
          SizedBox(height: 10),
          AutoSizeText(
            education,
            style: FontTextStyle.headerStyle.copyWith(
              color: CustomeColor.headerTextColor,
              fontSize: 25,
            ),
          ),

          // ==========================================
          // Education SECTION
          // ==========================================
          UniversityDetailsSection(),
          // ==========================================
          // FLUTTER ADVANCED COURSE SECTION
          // ==========================================
          FlutterAdvanceCourseDetailsSection(),
        ],
      ),
    );
  }
}

