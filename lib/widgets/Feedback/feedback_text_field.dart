import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class FeedbackTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final TextEditingController textController;
  const FeedbackTextField({
    super.key,
    required this.hintText,
    required this.textController,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      maxLines: maxLines,
      style: FontTextStyle.textfont.copyWith(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: FontTextStyle.textfont.copyWith(
          color: CustomeColor.headerTextColor,
          fontSize: 12,
        ),
        contentPadding: EdgeInsets.all(6),
        fillColor: CustomeColor.imageOverlayColor,
        filled: true,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }

  OutlineInputBorder get outlineInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
