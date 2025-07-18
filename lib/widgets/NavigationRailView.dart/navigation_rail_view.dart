import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/clicked_function.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/widgets/Drawer/navigator_buttons.dart';
import 'package:portfolio_app/widgets/Drawer/profile_image.dart';
import 'package:portfolio_app/widgets/Drawer/social_media_button.dart';

class NavigationRailView extends StatefulWidget {
  const NavigationRailView({super.key});

  @override
  State<NavigationRailView> createState() => _NavigationRailViewState();
}

class _NavigationRailViewState extends State<NavigationRailView> {

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      //LABEL TYPE AND EXTENDED CAN'T BE USED AT A TIME 
      extended: true,
     // labelType: NavigationRailLabelType.selected,
     /////////////////////
      backgroundColor: CustomeColor.secondaryColor,
      onDestinationSelected: (int onDestinationSelectedIndex) => setState(() {
        selectedIndex = onDestinationSelectedIndex;
        ClickedFunction().scrollSection(onDestinationSelectedIndex);
      }),
      indicatorColor: CustomeColor.primaryColor,
      unselectedIconTheme: IconThemeData(color: Colors.white),
      unselectedLabelTextStyle: TextStyle(color: Colors.white),
      selectedLabelTextStyle: TextStyle(color: Colors.blue),
      selectedIconTheme: IconThemeData(color: Colors.blue),
      leading: Column(children: [ProfileImage(), SocialMediaButtons()]),
      destinations: [
        for (int i = 0; i < navigators.length; i++)
          NavigationRailDestination(
            icon: Icon(
              navigators[i].values.first.icon!,
              color: navigators[i].values.first.color,
            ),
            label: Text(navigators[i].keys.first, selectionColor: Colors.white),
          ),
      ],
    );
  }
}
