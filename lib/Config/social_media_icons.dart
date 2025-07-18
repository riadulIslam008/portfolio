import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/clicked_function.dart';
import 'package:portfolio_app/Config/image_link.dart';

class IconsObject {
  final IconData iconName;
  final Color iconColor;
  final Function onTap;
  IconsObject({
    required this.iconName,
    required this.iconColor,
    required this.onTap,
  });
}

final List<IconsObject> socialMediaIcons = [
  IconsObject(
    iconName: FontAwesomeIcons.facebook,
    iconColor: const Color(0xFF1877F2),
    onTap: () {
      ClickedFunction().launchURL(faceBookProfileLink);
    },
  ),
  IconsObject(
    iconName: FontAwesomeIcons.linkedin,
    iconColor: const Color(0xFF0A66C2),
    onTap: () {
      ClickedFunction().launchURL(linkendProfileLink);
    },
  ),
  IconsObject(
    iconName: FontAwesomeIcons.github,
    iconColor: Colors.black,
    onTap: () {
      ClickedFunction().launchURL(githubProfileLink);
    },
  ),
  IconsObject(
    iconName: FontAwesomeIcons.instagram,
    iconColor: const Color(0xFFE1306C),
    onTap: () => ClickedFunction().openWhatsAppProfile(),
  ),
  IconsObject(
    iconName: FontAwesomeIcons.envelope,
    iconColor: const Color(0xFF808080),
    onTap: () => ClickedFunction().openEmail(),
  ),
];
