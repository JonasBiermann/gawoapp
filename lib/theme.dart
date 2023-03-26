import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color backgroundColor = Color(0xff3A3238);
const Color primaryColor = Color(0xffffffff);
const Color secondaryColor = Color(0xffC2B5B5);
const Color tertiaryColor = Color(0xffFFE5D4);
const Color iconColor = Color(0xffFFE5D4);
const Color itemColor = Color(0xff49454F);
const Color accentColor = Color(0xff49516F);

ThemeData defaultTheme = ThemeData(
  useMaterial3: true,
  navigationBarTheme: NavigationBarThemeData(
    labelTextStyle: MaterialStateProperty.all(
      GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: primaryColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    indicatorColor: itemColor,
  ),
  scaffoldBackgroundColor: backgroundColor,
  textTheme: const TextTheme(
    titleMedium: TextStyle(color: secondaryColor),
    bodyMedium: TextStyle(color: tertiaryColor),
  ),
  iconTheme: const IconThemeData(color: iconColor),
  cardColor: itemColor,
  dividerColor: tertiaryColor,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(primaryColor.value, {
      50: primaryColor.withOpacity(0.1),
      100: primaryColor.withOpacity(0.2),
      200: primaryColor.withOpacity(0.3),
      300: primaryColor.withOpacity(0.4),
      400: primaryColor.withOpacity(0.5),
      500: primaryColor.withOpacity(0.6),
      600: primaryColor.withOpacity(0.7),
      700: primaryColor.withOpacity(0.8),
      800: primaryColor.withOpacity(0.9),
      900: primaryColor.withOpacity(1),
    }),
  ).copyWith(secondary: accentColor),
);
