import 'package:portfolio_app/Config/image_link.dart';

class ProjectItemsObject {
  final String name;
  final String bannerLink;
  final String? liveDemo;
  final String githubLink;
  final String? apkLink;

  ProjectItemsObject({
    required this.name,
    required this.bannerLink,
    this.liveDemo,
    this.apkLink,
    required this.githubLink,
  });
}

final List<ProjectItemsObject> projectList = [
  ProjectItemsObject(
    name: "Amer School",
    bannerLink: amerSchoolBanner,
    githubLink: amerSchooolGithubLink,
    apkLink: amerSchoolApkLink,
  ),
  ProjectItemsObject(
    name: "Movie App",
    bannerLink: movieAppBanner,
    liveDemo: movieAppLiveLink,
    githubLink: movieAppGithubLink,
  ),
  ProjectItemsObject(
    name: "Online Radio",
    bannerLink: radioAppBanner,
    apkLink: aiRadioApkLink,
    githubLink: aiRadioGithubLink,
  ),
  ProjectItemsObject(
    name: "Animated UI",
    bannerLink: animatedUiBanner,
    liveDemo: animatedUILiveLink,
    githubLink: animatedUIGithubLink,
  ),
  ProjectItemsObject(
    name: "Flutter Pluzzle",
    bannerLink: puzzleAppBanner,
    apkLink: puzzleGameApkLink,
    githubLink: puzzleGameGithubLink,
  ),
  ProjectItemsObject(
    name: "Tic Tac Toe",
    bannerLink: ticTacToe,
    apkLink: ticTacToeGameApkLink,
    githubLink: ticTacToeGithubLink,
  ),
  ProjectItemsObject(
    name: "Note Book",
    bannerLink: noteBookBanner,
    apkLink: noteBookApkLink,
    githubLink: noteBookGithubLink,
  ),
];
