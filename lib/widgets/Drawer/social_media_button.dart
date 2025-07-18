import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/social_media_icons.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: screenwidth < 300 ? 0 : 15,
          children: [
            for (int i = 0; i < 5; i++)
              SocialMediaButton(
                iconname: socialMediaIcons[i].iconName,
                onTap: socialMediaIcons[i].onTap,
                iconColor: socialMediaIcons[i].iconColor,
              ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData iconname;
  final Color iconColor;
  final Function onTap;

  const SocialMediaButton({
    super.key,
    required this.iconname,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(6),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(
            0xFF272829,
          ), // Hex color #FF272829 (FF is opacity, already included)
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: FaIcon(
          iconname,
          color: iconColor,
          size: (screenwidth > 850) ? 20 : 16,
        ),
      ),
    );
  }
}
