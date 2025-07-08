import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class FlexibleTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  const FlexibleTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    bool smallScreenWidth = MediaQuery.of(context).size.width < 400;
    return Text(
      text,
      style: FontTextStyle.textfont.copyWith(
        color: CustomeColor.socialMediaColor,
        fontSize: smallScreenWidth ? 10 : fontSize,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

