import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/description_text_view.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Drawer/navigator_buttons.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_mobile.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_text_field.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_webview.dart';

class FeedbackLanding extends StatelessWidget {
  FeedbackLanding({super.key});

  final TextEditingController _textControllerForName = TextEditingController();
  final TextEditingController _textControllerForEmail = TextEditingController();
  final TextEditingController _textControllerForSubject =
      TextEditingController();
  final TextEditingController _textControllerForMessage =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Header(title: feedback),
          DescriptionTextView(descriptionText: feedbackDescription),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700),
              child: Column(
                spacing: 15,
                children: [
                  (width < 400)
                      ? FeedbackMobile(
                          hintTextForName: hintTextForName,
                          textControllerForName: _textControllerForName,
                          hintTextForEmail: hintTextForEmail,
                          textControllerForEmail: _textControllerForEmail,
                        )
                      : FeedbackWebview(
                          hintTextForName: hintTextForName,
                          textControllerForName: _textControllerForName,
                          hintTextForEmail: hintTextForEmail,
                          textControllerForEmail: _textControllerForEmail,
                        ),
                  FeedbackTextField(
                    hintText: hintTextForSubject,
                    textController: _textControllerForSubject,
                  ),
                  FeedbackTextField(
                    hintText: hintTextForMessage,
                    textController: _textControllerForMessage,
                    maxLines: 16,
                  ),
                  NavigationButton(
                    icon: FontAwesomeIcons.envelope,
                    iconColor: Color(0xFF808080),
                    label: sendFeedback,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
