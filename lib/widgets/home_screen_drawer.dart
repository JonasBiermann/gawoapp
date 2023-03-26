import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

import 'drawer_tile.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: itemColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: accentColor,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GAWO App',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        '@JonasJacobBiermann',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Grade 11',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const DrawerTile(
              tileTitle: 'Points',
              icon: Icons.auto_awesome_sharp,
            ),
            const DrawerTile(
              tileTitle: 'Download PDF',
              icon: Icons.download_rounded,
            ),
            const DrawerTile(
              tileTitle: 'Share Plan',
              icon: Icons.ios_share_outlined,
            ),
            const DrawerTile(
              tileTitle: 'Add to Calendar',
              icon: Icons.calendar_month_outlined,
            ),
            const DrawerTile(
              tileTitle: 'Logout',
              icon: Icons.logout_outlined,
            ),
          ],
        ));
  }
}
