import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
import 'package:portfolio_app/Config/text_string.dart';
import 'package:portfolio_app/widgets/Projects/project_image_dialog.dart';
import 'package:portfolio_app/widgets/Projects/project_items_object.dart';

class ProjectCard extends StatelessWidget {
  final double width;
  final ProjectItemsObject projectItemsObject;

  const ProjectCard({
    super.key,
    required this.width,
    required this.projectItemsObject,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => showDialog(
          context: context,
          //  List Must be dynamic in Future
          builder: (_) => ProjectImageDialog(images: amerSchoolImages),
        ),
        splashColor: Colors.redAccent.withOpacity(0.3),
        highlightColor: Colors.redAccent.withOpacity(0.2),
        child: Container(
          width: width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                projectItemsObject.bannerLink,
                errorListener: (p0) => {
                  Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                },
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // dark overlay
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              // PROJECT NAME TEXT
              IgnorePointer(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: AutoSizeText(
                    projectItemsObject.name,
                    style: FontTextStyle.textfont.copyWith(fontSize: 15),
                  ),
                ),
              ),
              // icons
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    (projectItemsObject.liveDemo == null)
                        ? Row(
                            children: [
                              Text(
                                "Apk Link",
                                style: FontTextStyle.textfont.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5),
                              _icon(FontAwesomeIcons.googlePlay, () {}),
                            ],
                          )
                        : Row(
                            children: [
                              Text(
                                "Live Demo",
                                style: FontTextStyle.textfont.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5),
                              _icon(FontAwesomeIcons.desktop, () {}),
                            ],
                          ),
                    Spacer(),
                    _icon(FontAwesomeIcons.github, () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.white,
        child: Icon(icon, size: 16, color: Colors.black),
      ),
    );
  }
}
