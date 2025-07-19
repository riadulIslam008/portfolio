import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/flexible_text.dart';
import 'package:portfolio_app/widgets/Resume/horizontal_line.dart';

class FlutterCourseDetailsSection extends StatelessWidget {
  final Map flutterTopics;
  final String flutterLearningPeriod;
  const FlutterCourseDetailsSection({
    super.key,
    required this.flutterTopics, required this.flutterLearningPeriod,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HorizontalBlueLine(),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: flutterTopics.entries.map((entry) {
              final key = entry.key;
              final value = entry.value;

              return value is List
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlexibleTextWidget(text: key, fontSize: 12),
                        ...value.map<Widget>(
                          (item) => Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidCircle,
                                  size: 5,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                FlexibleTextWidget(text: item, fontSize: 12),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : (key == "Heading")
                  ? FlexibleTextWidget(text: value, fontSize: 15)
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 15),
                      child: FlexibleTextWidget(text: value, fontSize: 10),
                    );
            }).toList(),
          ),
          Spacer(),
          FlexibleTextWidget(fontSize: 12, text: flutterLearningPeriod),
        ],
      ),
    );
  }
}
