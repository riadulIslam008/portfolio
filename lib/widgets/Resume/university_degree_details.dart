import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/flexible_text.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Resume/horizontal_line.dart';

class UniversityDetailsSection extends StatelessWidget {
  const UniversityDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      //IntrinsicHeight is powerful but can be expensive if used in a large list (e.g., ListView).
      //For simple, short layouts like this, it's fine.
      // 👈IntrinsicHeight forces the Row to adopt the height of its tallest child.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==========================================
          // EDUCATION SECTION
          // ==========================================
          HorizontalBlueLine(),
          const SizedBox(width: 10),
          // ==========================================
          // UNIVERSITY SECTION
          // ==========================================
          DegreeDetailsText(universityEduction: universityEduction),
        ],
      ),
    );
  }
}



class DegreeDetailsText extends StatelessWidget {
  final List universityEduction;
  const DegreeDetailsText({super.key, required this.universityEduction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < universityEduction.length - 1; i++)
                (i == 0)
                    ? DegreeText(text: universityEduction[i])
                    : FlexibleTextWidget(
                        text: universityEduction[i],
                        fontSize: 12,
                      ),
              SizedBox(height: 30),
            ],
          ),
          Spacer(),
          FlexibleTextWidget(text: universityEduction.last, fontSize: 12),
        ],
      ),
    );
  }
}

class DegreeText extends StatelessWidget {
  final String text;
  const DegreeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: FlexibleTextWidget(text: text, fontSize: 15),
    );
  }
}

