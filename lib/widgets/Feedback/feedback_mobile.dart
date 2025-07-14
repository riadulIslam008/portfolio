import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_text_field.dart';

class FeedbackMobile extends StatelessWidget {
  final String hintTextForName;
  final TextEditingController textControllerForName;
  final String hintTextForEmail;
  final TextEditingController textControllerForEmail;
  const FeedbackMobile({
    super.key,
    required this.hintTextForName,
    required this.textControllerForName,
    required this.hintTextForEmail,
    required this.textControllerForEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        FeedbackTextField(
          hintText: hintTextForName,
          textController: textControllerForName,
        ),
        FeedbackTextField(
          hintText: hintTextForEmail,
          textController: textControllerForEmail,
        ),
      ],
    );
  }
}
