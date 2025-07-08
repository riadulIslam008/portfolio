import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/font_text_style.dart';

class DetailsTile extends StatelessWidget {
  final List personalDetails;
  const DetailsTile({
    super.key,
    required this.personalDetails,
  });

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 850;
    return Expanded(
      child: Column(
        mainAxisAlignment: isSmallScreen
            ? MainAxisAlignment.start
            : MainAxisAlignment.spaceBetween,
        spacing: isSmallScreen ? 12 : 0,
        children: [
          for (var details in personalDetails)
            Row(
              spacing: 12,
              children: [
                FaIcon(
                  FontAwesomeIcons.greaterThan,
                  size: 12,
                  color: Colors.blue[300],
                ),
                Flexible(
                  child: AutoSizeText(
                    details.keys.first,
                    style: FontTextStyle.textfont.copyWith(
                      fontSize: isSmallScreen ? 12 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                  ),
                ),
                Flexible(
                  child: AutoSizeText(
                    details.values.first,
                    style: FontTextStyle.textfont.copyWith(
                      fontSize: isSmallScreen ? 10 : 13,
                      color: Colors.black,
                    ),
                    minFontSize: 10,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
