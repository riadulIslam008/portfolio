import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/About/about_view.dart';
import 'package:portfolio_app/widgets/Feedback/feedback_landing.dart';
import 'package:portfolio_app/widgets/Home/home_view.dart';
import 'package:portfolio_app/widgets/Projects/landing_view_project.dart';
import 'package:portfolio_app/widgets/Resume/resume_landing_view.dart';
import 'package:portfolio_app/widgets/Skills/skill_landing_page.dart';

class MainView extends StatelessWidget {
  final ScrollController scrollController;
  const MainView({super.key, required this.scrollController});

  //GENERATING GLOBAL KEY FOR CALLING SCROLL WIDGET
  static final List<GlobalKey> globalKey = List.generate(
    widgetsTree.length,
    (index) => GlobalKey(),
  );

  static final List<Widget> widgetsTree = [
    HomeView(),
    AboutView(),
    SkillLandingView(),
    ResumeLandingView(),
    LandingViewProject(),
    FeedbackLanding(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < widgetsTree.length; i++)
            Column(
              children: [SizedBox(key: globalKey[i], child: widgetsTree[i])],
            ),
        ],
      ),
    );
  }
}
