import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/About/mobile_view_about.dart';
import 'package:portfolio_app/widgets/About/webview_about.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 30, right: 10),
      alignment: Alignment.topLeft,
      child: screenWidth > 900
          ? const WebViewAbout()
          : const MobileViewAboutPage(),
    );
  }
}
