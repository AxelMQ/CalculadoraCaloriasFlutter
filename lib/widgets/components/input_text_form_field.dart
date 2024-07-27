
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextFormField extends StatelessWidget {
  const InputTextFormField({
    super.key,
    this.onChanged,
    required this.hintText,
    required this.text,
  });

  final Function(String)? onChanged;
  final String hintText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          child: TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.titilliumWeb(
                color: Colors.black12,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 13, 64, 105),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 13, 64, 105),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              alignLabelWithHint: true,
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.titilliumWeb(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
