import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "A ",
          style: FontTextStyle.textfont.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: CustomeColor.primaryColor,
          ),
        ),
        DefaultTextStyle(
          style: FontTextStyle.textfont.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: CustomeColor.primaryColor,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Flutter Developer',
                cursor: '|',
                speed: const Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'Self-taught Programmer',
                cursor: '|',
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
