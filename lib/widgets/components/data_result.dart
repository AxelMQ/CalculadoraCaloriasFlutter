import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataResult extends StatelessWidget {
  const DataResult({
    super.key,
    required this.respt,
    required this.text,
  });

  final String respt;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.titilliumWeb(
                fontSize: 16.5, fontWeight: FontWeight.w500),
          ),
          Text(
            respt,
            style: GoogleFonts.titilliumWeb(
              fontSize: 17.5,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
