import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsObject {
  IconData iconName;
  Color iconColor;
  IconsObject({
    required this.iconName,
    required this.iconColor,
  });
}


final List<IconsObject> socialMediaIcons = [
  IconsObject(iconName:  FontAwesomeIcons.facebook, iconColor: const Color(0xFF1877F2)),
  IconsObject(iconName:  FontAwesomeIcons.linkedin, iconColor: const Color(0xFF0A66C2)),
  IconsObject(iconName:  FontAwesomeIcons.github, iconColor: Colors.black),
  IconsObject(iconName:  FontAwesomeIcons.instagram, iconColor:const Color(0xFFE1306C)),
  IconsObject(iconName:  FontAwesomeIcons.envelope, iconColor: const Color(0xFF808080)),
];