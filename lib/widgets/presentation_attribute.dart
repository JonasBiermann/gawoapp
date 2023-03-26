import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

class PresentationAttribute extends StatelessWidget {
  const PresentationAttribute({
    super.key,
    required this.attribute,
    required this.attributeName,
  });

  final String attribute;
  final String attributeName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          attributeName,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: secondaryColor,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          attribute,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: secondaryColor,
            ),
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
