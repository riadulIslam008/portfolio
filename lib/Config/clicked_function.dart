import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/MainView/main_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickedFunction{

  //NAVIGATION BUTTON WORKING FUNCTION
    void scrollSection(int scrollIndx) {
    final GlobalKey key = MainView.globalKey[scrollIndx];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.bounceIn,
    );
  }

  //URL LAUCHER FUNCTION
  Future<void> launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $urlString';
  }
}

//EMAIL URL OPTION
void openEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'riadulislam088@gmail.com',
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not open email client';
  }
}


//WHAT'S APP OPTION
void openWhatsAppProfile() async {
  final Uri whatsappUrl = Uri.parse('https://wa.me/+8801770139498'); // Replace with your number (no +, no dashes)

  if (await canLaunchUrl(whatsappUrl)) {
    await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch WhatsApp Web';
  }
}

}