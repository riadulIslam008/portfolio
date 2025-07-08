import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/widgets/About/personal_details_scetion.dart';

class WebViewAbout extends StatelessWidget {
  const WebViewAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          // ==========================================
          // Header (About)
          // ==========================================
          const Header(title: "About"),
          // ==========================================
          // Description Text
          // ==========================================
          Text(
            descriptionText,
            style: FontTextStyle.textfont.copyWith(
              fontSize: 12,
              color: CustomeColor.headerTextColor,
            ),
          ),

          // ==========================================
          // Personal Details
          // ==========================================
          const PersonalDetailSection(),
        ],
      ),
    );
  }
}
