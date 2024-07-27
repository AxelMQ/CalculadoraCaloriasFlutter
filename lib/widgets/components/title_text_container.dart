import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextContainer extends StatelessWidget {
  const TitleTextContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.titilliumWeb(
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}