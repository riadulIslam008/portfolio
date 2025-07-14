import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class DescriptionTextView extends StatelessWidget {
  final String descriptionText;
  const DescriptionTextView({
    super.key, required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      descriptionText,
      style: FontTextStyle.textfont
          .copyWith(fontSize: 12, color: CustomeColor.headerTextColor),
      minFontSize: 10,
    );
  }
}