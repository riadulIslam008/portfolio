import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/description_text_view.dart';
import 'package:portfolio_app/Config/header.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Drawer/navigator_buttons.dart';
import 'package:portfolio_app/widgets/Feedback/email_message_send.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_text_field.dart';
import 'package:portfolio_app/widgets/Feedback/form_validation_function.dart';

class FeedbackLanding extends StatefulWidget {
  const FeedbackLanding({super.key});

  @override
  State<FeedbackLanding> createState() => _FeedbackLandingState();
}

class _FeedbackLandingState extends State<FeedbackLanding> {
  ///GLOBAL KEY FOR FORM VALIDATION
  final GlobalKey<FormState> _formstate = GlobalKey<FormState>();
  final FormValidationFunction _validation = FormValidationFunction();

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
      child: Form(
        key: _formstate,
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
                        /// FOR WEBVIEW
                        ? Column(
                            spacing: 15,
                            children: [
                              /// FOR NAME TEXT FIELD
                              FeedbackTextField(
                                hintText: hintTextForName,
                                textController: _textControllerForName,
                                validationMessage: () => _validation
                                    .validateName(_textControllerForName.text),
                                errorMeassge: nameErrorMessage,
                              ),

                              /// FOR EMAIL TEXT FIELD
                              FeedbackTextField(
                                hintText: hintTextForEmail,
                                textController: _textControllerForEmail,
                                validationMessage: () =>
                                    _validation.validateEmail(
                                      _textControllerForEmail.text,
                                    ),
                                errorMeassge: emailErrorMessage,
                              ),
                            ],
                          )
                        /// FOR WEBVIEW
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              /// FOR NAME TEXT FIELD
                              Flexible(
                                child: FeedbackTextField(
                                  hintText: hintTextForName,
                                  textController: _textControllerForName,
                                  validationMessage: () =>
                                      _validation.validateName(
                                        _textControllerForName.text,
                                      ),
                                  errorMeassge: nameErrorMessage,
                                ),
                              ),

                              /// FOR EMAIL TEXT FIELD
                              Flexible(
                                child: FeedbackTextField(
                                  hintText: hintTextForEmail,
                                  textController: _textControllerForEmail,
                                  validationMessage: () =>
                                      _validation.validateEmail(
                                        _textControllerForName.text,
                                      ),
                                  errorMeassge: emailErrorMessage,
                                ),
                              ),
                            ],
                          ),

                    /// SUBJECT TEXT FIELD
                    FeedbackTextField(
                      hintText: hintTextForSubject,
                      textController: _textControllerForSubject,
                      validationMessage: () => _validation.validateSubject(
                        _textControllerForSubject.text,
                      ),
                      errorMeassge: subjectErrorMessage,
                    ),

                    /// MESSAGE TEXT FIELD
                    FeedbackTextField(
                      hintText: hintTextForMessage,
                      textController: _textControllerForMessage,
                      maxLines: 16,
                      validationMessage: () => _validation.validateMessage(
                        _textControllerForMessage.text,
                      ),
                      errorMeassge: messageBoxErrorMessage,
                    ),
                    NavigationButton(
                      icon: FontAwesomeIcons.envelope,
                      iconColor: Color(0xFF808080),
                      label: sendFeedback,
                      onTap: () {
                        sendEmail();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendEmail() async {
    if (_formstate.currentState?.validate() ?? false) {
      final success = await EmailMessageSend.sendEmail(
        name: _textControllerForName.text,
        email: _textControllerForEmail.text,
        subject: _textControllerForSubject.text,
        message: _textControllerForMessage.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'Email sent successfully!'
                : 'Something went wrong. Please try again.',
          ),
          backgroundColor: success ? Colors.green : Colors.red,
        ),
      );
      _formstate.currentState?.reset();
      _textControllerForName.clear();
      _textControllerForEmail.clear();
      _textControllerForSubject.clear();
      _textControllerForMessage.clear();
    }
  }
}
