import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/description_text_view.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/widgets/About/details_tile.dart';
import 'package:portfolio_app/widgets/About/personal_details_scetion.dart';

class MobileViewAboutPage extends StatelessWidget {
  const MobileViewAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 14,
      children: [
        // ==========================================
        // HEADER (ABOUT)
        // ==========================================
        const Header(title: "About"),
        // ==========================================
        // DESCRIPTION TEXT
        // ==========================================
        DescriptionTextView(descriptionText: descriptionText),
        // ==========================================
        // IMAGE
        // ==========================================
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 420,
            width: screenWidth > 350 ? 260 : double.infinity,
            child: const AboutImage(),
          ),
        ),
        // ==========================================
        // TITLE and DESCRIPTION
        // ==========================================
        const AboutTitle(),
        const AboutDescription(),
        // ==========================================
        // DETAILS
        // ==========================================
        const DetailsTile(personalDetails: personalDetailsOne),
        const DetailsTile(personalDetails: personalDetailsTwo),
      ],
    );
  }
}
