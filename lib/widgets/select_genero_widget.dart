// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/genero_provider.dart';
import 'components/image_genero.dart';
import 'components/title_text_container.dart';

class SelectGeneroWidget extends StatelessWidget {
  const SelectGeneroWidget({
    super.key,
    required this.generoProvider,
  });

  final GeneroProvider generoProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const TitleTextContainer(
          text: 'Seleccione su Genero:',
        ),
        const SizedBox(
          height: 10,
        ),
        seleccionarGenero(generoProvider: generoProvider),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class seleccionarGenero extends StatelessWidget {
  const seleccionarGenero({
    super.key,
    required this.generoProvider,
  });

  final GeneroProvider generoProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const ImageGenero(
                url:
                    'https://th.bing.com/th/id/OIP.YhvkR5jN6lp0ku7e-cx56gHaHa?pid=ImgDet&rs=1'),
            ElevatedButton(
              onPressed: () {
                generoProvider.selectGenero('Hombre'); //Seleccionamos el Genero
                generoProvider.setValorGenero('Hombre');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: generoProvider.selectedGenero == 'Hombre'
                      ? Colors.blue //color cuando esta seleccionado
                      : Colors.grey //color cuando no esta seleccionado
                  ),
              child: Text(
                'Hombre',
                style: GoogleFonts.titilliumWeb(fontSize: 17),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            const ImageGenero(
                url:
                    'https://th.bing.com/th/id/OIP.ANyaiBUTuCs-g7RQCBpi1AHaHa?pid=ImgDet&rs=1'),
            ElevatedButton(
              onPressed: () {
                generoProvider.selectGenero('Mujer'); //seleccionamos el Genero
                generoProvider.setValorGenero('Mujer');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: generoProvider.selectedGenero == 'Mujer'
                      ? Colors.pink //color cuando esta seleccionado
                      : Colors.grey // color cuando no esta seleccionado
                  ),
              child: Text(
                'Mujer',
                style: GoogleFonts.titilliumWeb(fontSize: 17),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
