import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

final List<Map<String, Icon>> navigators = [
  {'Home': Icon(Icons.home, color: Colors.blue[700])},
  {'About': Icon(Icons.person, color: Colors.green[600])},
  {'Skills': Icon(Icons.star, color: Colors.orange[700])},
  {'Resume': Icon(Icons.description, color: Colors.purple[600])},
  {'Projects': Icon(Icons.work, color: Colors.teal[600])},
  {'Feedback': Icon(Icons.feedback, color: Colors.red[600])},
];

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final VoidCallback onTap;

  const NavigationButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenwidth * 0.01, top: 15),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              CustomeColor.secondaryColor, // Dark gray background (#FF272829)
          // onPrimary: Colors.white, // Text/icon color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          padding: const EdgeInsets.all(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: FontTextStyle.textfont.copyWith(
                color: CustomeColor.primaryColor,
                fontSize: 16
              ),
            ),
          ],
        ),
      ),
    );
  }
}
