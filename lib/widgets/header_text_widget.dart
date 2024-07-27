import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Calcular Calorias Diarias',
          style: GoogleFonts.titilliumWeb(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Para un calculo correcto necesitamos algo de Informacion basica sobre ti',
          style: GoogleFonts.titilliumWeb(
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}