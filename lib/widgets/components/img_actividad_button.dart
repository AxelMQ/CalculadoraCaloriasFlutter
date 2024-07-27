import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../providers/nivelActividad_provider.dart';

class ImgActividadButton extends StatelessWidget {
  const ImgActividadButton({
    super.key,
    required this.actividadProvider,
    required this.text,
    this.onTap,
    required this.url,
  });

  final NivelActidadProviders actividadProvider;
  final String url;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            width: 30,
            height: 30,
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage(url),
            fit: BoxFit.cover,
            imageErrorBuilder: ((context, error, stackTrace) {
              return const Center(
                child: Icon(
                  Icons.error_outline,
                  size: 25,
                  color: Colors.red,
                ),
              );
            }),
          ),
        ),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: actividadProvider.selectedActidad == text
                  ? Colors.orange
                  : Colors.grey),
          child: Text(
            text,
            style: GoogleFonts.titilliumWeb(),
          ),
        ),
      ],
    );
  }
}
