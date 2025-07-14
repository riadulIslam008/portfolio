import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_text_field.dart';

class FeedbackWebview extends StatelessWidget {
  final String hintTextForName;
  final TextEditingController textControllerForName;
  final String hintTextForEmail;
  final TextEditingController textControllerForEmail;
  const FeedbackWebview({
    super.key,
    required this.hintTextForName,
    required this.textControllerForName,
    required this.hintTextForEmail,
    required this.textControllerForEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        Flexible(
          child: FeedbackTextField(
            hintText: hintTextForName,
            textController: textControllerForName,
          ),
        ),
        Flexible(
          child: FeedbackTextField(
            hintText: hintTextForEmail,
            textController: textControllerForEmail,
          ),
        ),
      ],
    );
  }
}
