import 'package:flutter/material.dart';
import 'package:gawoapp/screens/main_screen.dart';
import 'package:gawoapp/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAWO App',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: MainScreen(currentPageIndex: 0),
    );
  }
}
