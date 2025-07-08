import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Drawer/navigator_buttons.dart';
import 'package:portfolio_app/widgets/Drawer/profile_image.dart';
import 'package:portfolio_app/widgets/Drawer/social_media_button.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Image........................................................
          const ProfileImage(),

          // Social Media Button.........................................
          const SocialMediaButtons(),

          //NAVGATION BUTTON.............
          for (var navigator in navigators)
            Align(
              alignment: Alignment.topLeft,
              child: NavigationButton(
                icon: navigator.values.first.icon!,
                iconColor: navigator.values.first.color!,
                label: navigator.keys.first,
                onTap: () {},
              ),
            ),
        ],
      ),
    );
  }
}
