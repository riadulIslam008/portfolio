import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontTextStyle.headerStyle.copyWith(
            color: CustomeColor.headerTextColor,
            fontSize: 25,
          ),
        ),

        const SizedBox(height: 4), // space between text and line
        SizedBox(
          width: 50, // 50% of parent (Text) width
          child: Container(
            height: 2,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
