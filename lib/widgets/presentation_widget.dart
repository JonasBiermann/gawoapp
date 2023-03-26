import 'package:flutter/material.dart';
import 'package:gawoapp/widgets/presentation_attribute.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gawoapp/theme.dart';

class PresentationWidget extends StatelessWidget {
  PresentationWidget({
    super.key,
    required this.title,
    required this.time,
    required this.day,
    required this.room,
    required this.points,
  });

  String title;
  String time;
  String day;
  String room;
  int points;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.155,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
          color: itemColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_rounded,
                      color: tertiaryColor,
                    ),
                  ],
                ),
                PresentationAttribute(
                  attribute: time,
                  attributeName: 'Time',
                ),
                PresentationAttribute(
                  attribute: day,
                  attributeName: 'Day',
                ),
                PresentationAttribute(
                  attribute: room,
                  attributeName: 'Room',
                ),
                PresentationAttribute(
                  attribute: points.toString(),
                  attributeName: 'Points',
                ),
              ],
            ),
          )),
    );
  }
}
