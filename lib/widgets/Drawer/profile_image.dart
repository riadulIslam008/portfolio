import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/image_link.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(10),
        width: 140, // Diameter of the circle
        height: 120,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, // Optional: makes it circular
          image: DecorationImage(
            image: CachedNetworkImageProvider(profileImage),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover, // Adjusts how the image fits
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ), // Diameter of the circle
          ],
        ),
      ),
    );
  }
}
