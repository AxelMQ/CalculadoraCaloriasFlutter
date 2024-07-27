import 'package:calculadora_app/widgets/result_calculos_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/altura_provider.dart';
import '../providers/edad_provider.dart';
import '../providers/genero_provider.dart';
import '../providers/nivelActividad_provider.dart';
import '../providers/peso_provider.dart';

class CalcularCaloriasButton extends StatelessWidget {
  const CalcularCaloriasButton({
    super.key,
    required this.edadProvider,
    required this.alturaProvider,
    required this.pesoProvider,
    required this.generoProvider,
    required this.actividadProvider,
  });

  final EdadProvider edadProvider;
  final AlturaProvider alturaProvider;
  final PesoProvider pesoProvider;
  final GeneroProvider generoProvider;
  final NivelActidadProviders actividadProvider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          final edad = edadProvider.edad;
          final altura = alturaProvider.altura;
          final peso = pesoProvider.peso;
          // final genero = generoProvider.selectedGenero;
          final valorGenero = generoProvider.valorGenero;
          // final actividad = actividadProvider.selectedActidad;
          final valorActidad = actividadProvider.valorActidad;

          final caloriasMatenimiento =
              ((peso * 10) + (6.25 * altura) - (5 * edad) + valorGenero);

          final caloriasActividad = caloriasMatenimiento * valorActidad;

          final bajarLento = (caloriasActividad - 300).toStringAsFixed(1);
          final bajarRapido = (caloriasActividad - 600).toStringAsFixed(1);
          final mantenimiento = (caloriasActividad).toStringAsFixed(1);
          final subirLento = (caloriasActividad + 300).toStringAsFixed(1);
          final subirRapido = (caloriasActividad + 600).toStringAsFixed(1);

          showDialog(
            context: context,
            builder: (context) {
              return ResultCalculosWidget(
                  caloriasMatenimiento: caloriasMatenimiento,
                  mantenimiento: mantenimiento,
                  bajarLento: bajarLento,
                  bajarRapido: bajarRapido,
                  subirLento: subirLento,
                  subirRapido: subirRapido);
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 218, 65, 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          elevation: 7,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        ),
        child: Text(
          'Calcular Calorias Diarias',
          style: GoogleFonts.titilliumWeb(fontSize: 17, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
