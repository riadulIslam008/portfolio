import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/About/about_view.dart';
import 'package:portfolio_app/widgets/Home/home_view.dart';
import 'package:portfolio_app/widgets/Projects/landing_view_project.dart';
import 'package:portfolio_app/widgets/Resume/resume_landing_view.dart';
import 'package:portfolio_app/widgets/Skills/skill_landing_page.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  // final List<Widget> widgetsTree = [
  //   HomeView(),
  //   AboutView(),
  //   SkillLandingView(),
  //   ResumeLandingView(),
  // ];

  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for(Widget widgets in widgetsTree)
          //   widgets
          // ==========================================
          // Home SECTION
          // ==========================================
          const HomeView(),
          // ==========================================
          // About SECTION
          // ==========================================
          const AboutView(),
          // ==========================================
          // Skill SECTION
          // ==========================================
          SkillLandingView(),
          // ==========================================
          // RESUME SECTION
          // ==========================================
          ResumeLandingView(),
          // ==========================================
          // PROJECT SECTION
          // ==========================================
          LandingViewProject(),
        ],
      ),
    );
  }
}
