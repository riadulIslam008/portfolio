import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/widgets/Drawer/drawer.dart';
import 'package:portfolio_app/widgets/MainView/main_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth < 850) ? const MobileView() : const WebView();
  }
}


class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          ///Drawer........................
          Container(
            width: screenwidth * 0.25,
            height: screenHeight,
            alignment: Alignment.topLeft,
            color: CustomeColor.secondaryColor,
            child: const SideDrawer(),
          ),
          const Expanded(
            child: SafeArea(
              child: MainView(),
            ),
          ),
        ],
      ),
    );
  }
}


class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColor.primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0,
        automaticallyImplyLeading: false,
        // ==========================================
        // FOR MENU BUTTON
        // ==========================================
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white), // Menu icon
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
      // ==========================================
      // FOR DRAWER
      // ==========================================
      drawer: const Drawer(
        backgroundColor: CustomeColor.secondaryColor,
        child: SideDrawer(),
      ),
      body: const MainView(),
    );
  }
}
