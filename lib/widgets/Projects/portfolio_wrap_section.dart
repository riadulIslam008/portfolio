import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Projects/project_card.dart';
import 'package:portfolio_app/widgets/Projects/project_items_object.dart';

class PortfolioWrapSection extends StatelessWidget {
  const PortfolioWrapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;

        // Define item count per row dynamically
        int crossAxisCount = (maxWidth / 300).floor().clamp(1, 6);
        double spacing = 15;
        double itemWidth =
            (maxWidth - (spacing * (crossAxisCount - 1))) / crossAxisCount;
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: projectList.map((ProjectItemsObject projectItemsObject) {
            return ProjectCard(
              width: itemWidth,
              //(maxWidth >= 300 && maxWidth < 500) ? 300 :
              projectItemsObject: projectItemsObject,
            );
          }).toList(),
        );
      },
    );
  }
}