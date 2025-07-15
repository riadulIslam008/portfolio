import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/description_text_view.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Projects/portfolio_wrap_section.dart';

class LandingViewProject extends StatelessWidget {
  const LandingViewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Header(title: project),
          DescriptionTextView(descriptionText: projectDescription),
          PortfolioWrapSection(),
        ],
      ),
    );
  }
}
