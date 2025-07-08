import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillProgressSection extends StatefulWidget {
  final String skill;
  final double level; // value between 0.0 to 1.0

  const SkillProgressSection({
    super.key,
    required this.skill,
    required this.level,
  });

  @override
  State<SkillProgressSection> createState() => _SkillProgressSectionState();
}

class _SkillProgressSectionState extends State<SkillProgressSection> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey("Skills"),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0.3 && !_visible) {
          setState(() {
            _visible = true;
          });
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.skill,
                style: FontTextStyle.textfont.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: CustomeColor.headerTextColor,
                ),
              ),
              Text(
                "${widget.level * 100}%",
                style: FontTextStyle.textfont.copyWith(
                  color: CustomeColor.headerTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: widget.level),
              duration: const Duration(seconds: 1),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                minHeight: 10,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
          ),
          // LinearProgressIndicator(
          //   value: level,
          //   minHeight: 10,
          //   borderRadius: 50,
          //   backgroundColor: Colors.grey.shade300,
          //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          // ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
