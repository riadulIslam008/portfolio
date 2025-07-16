import 'package:portfolio_app/Config/image_link.dart';
import 'package:portfolio_app/Config/text_string.dart';

class ProjectItemsObject {
  final String name;
  final String bannerLink;
  final String? liveDemo;
  final String githubLink;
  final String? apkLink;
  final List<String> images;

  ProjectItemsObject({
    required this.name,
    required this.bannerLink,
    this.liveDemo,
    this.apkLink,
    required this.githubLink,
    required this.images,
  });
}

final List<ProjectItemsObject> projectList = [
  ProjectItemsObject(
    name: "Amer School",
    bannerLink: amerSchoolBanner,
    githubLink: amerSchooolGithubLink,
    apkLink: amerSchoolApkLink,
    images: amerSchoolImages,
  ),
  ProjectItemsObject(
    name: "Movie App",
    bannerLink: movieAppBanner,
    liveDemo: movieAppLiveLink,
    githubLink: movieAppGithubLink,
    images: movieAppImages,
  ),
  ProjectItemsObject(
    name: "Online Radio",
    bannerLink: radioAppBanner,
    apkLink: aiRadioApkLink,
    githubLink: aiRadioGithubLink,
    images: radioAppImages,
  ),
  ProjectItemsObject(
    name: "Animated UI",
    bannerLink: animatedUiBanner,
    liveDemo: animatedUILiveLink,
    githubLink: animatedUIGithubLink,
    images: animatedUIImages,
  ),
  ProjectItemsObject(
    name: "Flutter Pluzzle",
    bannerLink: puzzleAppBanner,
    apkLink: puzzleGameApkLink,
    githubLink: puzzleGameGithubLink,
    images: flutterPuzzleImages,
  ),
  ProjectItemsObject(
    name: "Tic Tac Toe",
    bannerLink: ticTacToe,
    apkLink: ticTacToeGameApkLink,
    githubLink: ticTacToeGithubLink,
    images: ticTacToeImages,
  ),
  ProjectItemsObject(
    name: "Note Book",
    bannerLink: noteBookBanner,
    apkLink: noteBookApkLink,
    githubLink: noteBookGithubLink,
    images: noteBookImages,
  ),
];
