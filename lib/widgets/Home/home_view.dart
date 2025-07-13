import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/image_link.dart';
import 'package:portfolio_app/widgets/Drawer/navigator_buttons.dart';
import 'package:portfolio_app/widgets/Home/animated_text.dart';
import 'package:twemoji/twemoji.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      foregroundDecoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: Colors.black.withOpacity(0.2), // Semi-transparent black overlay
      ),
      // color: CustomeColor.secondaryColor,
      height: screenHeight * 0.85,
      width: (screenWidth < 850) ? screenWidth : screenWidth * 0.75,
      // ==========================================
      // FOR BACKGROUND IMAGE
      // ==========================================
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.fill,
        ),
      ),
      // ==========================================
      // FOR UPPER TEXT
      // ==========================================
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TwemojiText(
              text: "Hi there 😊",
              style: FontTextStyle.textfont.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 10),
            // ==========================================
            // Name TEXT
            // ==========================================
            Text(
              "I'm Riadul Islam",
              style: FontTextStyle.textfont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // ==========================================
            // Animated TEXT
            // ==========================================
            const AnimatedText(),
            const SizedBox(height: 10),
            // ==========================================
            // Animated TEXT
            // ==========================================
            NavigationButton(
              icon: FontAwesomeIcons.download,
              iconColor: CustomeColor.primaryColor,
              label: "Download CV",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
