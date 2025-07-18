import 'package:flutter/material.dart';
import 'package:portfolio_app/Config/color_code.dart';
import 'package:portfolio_app/widgets/Drawer/drawer.dart';
import 'package:portfolio_app/widgets/MainView/main_view.dart';
import 'package:portfolio_app/widgets/NavigationRailView.dart/navigation_rail_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth < 850)
        ? MobileView(scrollController: scrollController)
        : WebView(scrollController: scrollController);
  }
}

class WebView extends StatelessWidget {
  final ScrollController scrollController;
  const WebView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Scaffold  (
      body: Row(
        children: [
          ////// NAVIGATOR RAIL//////////
          NavigationRailView(),
          Expanded(
            child: SafeArea(
              child: MainView(scrollController: scrollController),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  final ScrollController scrollController;
  const MobileView({super.key, required this.scrollController});

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
      body: MainView(scrollController: scrollController),
    );
  }
}
