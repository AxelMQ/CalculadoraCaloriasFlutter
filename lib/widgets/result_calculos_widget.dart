import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/data_result.dart';

class ResultCalculosWidget extends StatelessWidget {
  const ResultCalculosWidget({
    super.key,
    required this.caloriasMatenimiento,
    required this.mantenimiento,
    required this.bajarLento,
    required this.bajarRapido,
    required this.subirLento,
    required this.subirRapido,
  });

  final double caloriasMatenimiento;
  final String mantenimiento;
  final String bajarLento;
  final String bajarRapido;
  final String subirLento;
  final String subirRapido;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      titlePadding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      contentPadding: const EdgeInsets.all(16.0),
      title: Text(
        'Calorias de Mantenimiento',
        style: GoogleFonts.titilliumWeb(fontSize: 22),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TMB: ',
                style: GoogleFonts.titilliumWeb(fontWeight: FontWeight.bold),
              ),
              Text(
                '$caloriasMatenimiento',
                style: GoogleFonts.titilliumWeb(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TMB x Factor Actividad:',
                style: GoogleFonts.titilliumWeb(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                mantenimiento,
                style: GoogleFonts.titilliumWeb(),
              ),
            ],
          ),
          const Divider(height: 20,thickness: 1.5,),
          DataResult(text: 'Bajar de Peso LENTO:', respt: bajarLento),
          DataResult(text: 'Bajar de Peso RAPIDO:', respt: bajarRapido),
          DataResult(text: 'MANTENIMIENTO:', respt: mantenimiento),
          DataResult(text: 'Subir de Peso LENTO:', respt: subirLento),
          DataResult(text: 'Subir de Peso RAPIDO:', respt: subirRapido),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cerrar',
              style: GoogleFonts.titilliumWeb(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange),
            ))
      ],
    );
  }
}
