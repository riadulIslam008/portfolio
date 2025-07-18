import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/Config/clicked_function.dart';
import 'package:portfolio_app/Config/font_text_style.dart';
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

          /// On Click Images show
          builder: (_) => ProjectImageDialog(images: projectItemsObject.images),
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
                        ///// APK ICON AND OnTAP FUNCTION////
                        ? GestureDetector(
                            onTap: () => ClickedFunction().launchURL(
                              projectItemsObject.apkLink!,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Apk Link",
                                  style: FontTextStyle.textfont.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  FontAwesomeIcons.googlePlay,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        //// LIVE DENO ICON AND ON TAP FUNCTION
                        : GestureDetector(
                            onTap: () => ClickedFunction().launchURL(
                              projectItemsObject.liveDemo!,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Live Demo",
                                  style: FontTextStyle.textfont.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  FontAwesomeIcons.desktop,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                    Spacer(),

                    ///// GITHUB LINK FOR MY PROJECT
                    _icon(
                      FontAwesomeIcons.github,
                      () => ClickedFunction().launchURL(
                        projectItemsObject.githubLink,
                      ),
                    ),
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
