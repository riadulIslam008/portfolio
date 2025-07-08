import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/About/details_tile.dart';

class PersonalDetailSection extends StatelessWidget {
  const PersonalDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        spacing: 20,
        children: [
          // ==========================================
          // Personal Image
          // ==========================================
          Container(
            alignment: Alignment.topLeft,
            child: const AboutImage(),
          ),
          // ==========================================
          // Personal details
          // ==========================================
          const Expanded(
            child: Column(
              spacing: 18,
              children: [
                AboutTitle(),
                AboutDescription(),
                Expanded(
                  child: Row(
                    children: [
                      DetailsTile(personalDetails: personalDetailsOne),
                      DetailsTile(personalDetails: personalDetailsTwo),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AboutDescription extends StatelessWidget {
  const AboutDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      aboutDescriptionText,
      style: FontTextStyle.textfont.copyWith(
        fontSize: 10,
        color: CustomeColor.headerTextColor,
      ),
      minFontSize: 10,
     // maxLines: 3,
    );
  }
}

class AboutTitle extends StatelessWidget {
  const AboutTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AutoSizeText(
        resumeTitle,
        style: FontTextStyle.headerStyle.copyWith(
          fontSize: 20,
        ),
        minFontSize: 14,
        maxLines: 1,
      ),
    );
  }
}

class AboutImage extends StatelessWidget {
  const AboutImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl:
          "https://raw.githubusercontent.com/riadulIslam008/images/refs/heads/main/about.webp",
    );
  }
}
