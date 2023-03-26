import 'package:flutter/material.dart';
import 'package:gawoapp/screens/account_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

import '../widgets/home_screen_drawer.dart';
import 'explore_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key, required this.currentPageIndex});

  int currentPageIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    const ExploreScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: primaryColor),
        backgroundColor: itemColor,
        title: Text(
          'GAWO App',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AccountScreen(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.person_outline,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      drawer: const HomeScreenDrawer(),
      body: screenList[widget.currentPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: itemColor,
        onDestinationSelected: (int index) {
          setState(() {
            widget.currentPageIndex = index;
          });
        },
        selectedIndex: widget.currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: tertiaryColor,
              ),
              selectedIcon: Icon(
                Icons.home_rounded,
                color: tertiaryColor,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.explore_outlined,
                color: tertiaryColor,
              ),
              selectedIcon: Icon(
                Icons.explore_rounded,
                color: tertiaryColor,
              ),
              label: 'Explore'),
          NavigationDestination(
              icon: Icon(
                Icons.person_outline,
                color: tertiaryColor,
              ),
              selectedIcon: Icon(
                Icons.person,
                color: tertiaryColor,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
