import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/clicked_function.dart';
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
          for (int i = 0; i < navigators.length; i++)
            Align(
              alignment: Alignment.topLeft,
              child: NavigationButton(
                icon: navigators[i].values.first.icon!,
                iconColor: navigators[i].values.first.color!,
                label: navigators[i].keys.first,
                onTap: () {
                  if (Scaffold.of(context).isDrawerOpen) {
                    Scaffold.of(context).closeDrawer();
                  }
                  ClickedFunction().scrollSection(i);
                },
              ),
            ),
        ],
      ),
    );
  }
}
