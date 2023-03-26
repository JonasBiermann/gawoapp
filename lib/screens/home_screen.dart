import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

import '../widgets/presentation_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> presentations = [
    PresentationWidget(
      title: 'Flutter Workshop',
      time: '8.30-10.20',
      day: 'Monday',
      room: 'OG 20',
      points: 2,
    ),
    PresentationWidget(
      title: 'Erste Planung Alumni-Plattform',
      time: '10.20-13.15',
      day: 'Monday',
      room: 'OG 21',
      points: 3,
    ),
    PresentationWidget(
      title: 'Akkordeon Orchester',
      time: '9.25-11.15',
      day: 'Tuesday',
      room: 'EG 1',
      points: 3,
    ),
    PresentationWidget(
      title: 'Website Schreiben mit HTML und CSS',
      time: '11.15-13.15',
      day: 'Tuesday',
      room: 'OG 20',
      points: 3,
    ),
    PresentationWidget(
      title: 'Experimentierworkshop',
      time: '7.35-13.15',
      day: 'Wednesday',
      room: 'OG 18',
      points: 6,
    ),
    PresentationWidget(
      title: 'Python für 7. und 8. Klasse',
      time: '7.35-9.25',
      day: 'Thursday',
      room: 'OG 20',
      points: 3,
    ),
    PresentationWidget(
      title: 'Laufzeitoptimierung',
      time: '9.25-11.15',
      day: 'Thursday',
      room: 'OG 21',
      points: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Upcoming Events',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.2,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: presentations.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: presentations[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
