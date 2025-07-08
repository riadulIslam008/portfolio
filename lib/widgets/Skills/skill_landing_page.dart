import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Skills/skill_mobile_view.dart';
import 'package:portfolio_app/widgets/Skills/skill_webview.dart';

class SkillLandingView extends StatelessWidget {
  const SkillLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    bool smallerScreen = MediaQuery.of(context).size.width < 500;
    return smallerScreen? MobileViewSkillPage(): WebViewSkillPage();
  }
}
