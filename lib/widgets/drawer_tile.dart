import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.tileTitle,
    required this.icon,
  });

  final String tileTitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: tertiaryColor,
      ),
      title: Text(
        tileTitle,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
