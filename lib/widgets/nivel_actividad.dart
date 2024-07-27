import 'package:calculadora_app/widgets/components/title_text_container.dart';
import 'package:flutter/material.dart';
import '../providers/nivelActividad_provider.dart';
import 'components/img_actividad_button.dart';

class NivelActividadWidget extends StatelessWidget {
  const NivelActividadWidget({
    super.key,
    required this.actividadProvider,
  });

  final NivelActidadProviders actividadProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const TitleTextContainer(text: 'Nivel de Actividad:'),
        SelectNivelActividad(actividadProvider: actividadProvider),
        const SizedBox(height: 10)
      ],
    );
  }
}

class SelectNivelActividad extends StatelessWidget {
  const SelectNivelActividad({
    super.key,
    required this.actividadProvider,
  });

  final NivelActidadProviders actividadProvider;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ImgActividadButton(
          actividadProvider: actividadProvider,
          url:
              'https://www.imss.gob.mx/sites/all/statics/salud/calculadorcalorias/sentado.png',
          text: 'Sedentario',
          onTap: () {
            actividadProvider.selectActividad('Sedentario');
            actividadProvider.setValorActividad('Sedentario');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ImgActividadButton(
          actividadProvider: actividadProvider,
          text: 'Ligeramente Activo',
          url:
              'https://www.imss.gob.mx/sites/all/statics/salud/calculadorcalorias/jardinero.png',
          onTap: () {
            actividadProvider.selectActividad('Ligeramente Activo');
            actividadProvider.setValorActividad('Ligeramente Activo');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ImgActividadButton(
          actividadProvider: actividadProvider,
          text: 'Moderadamente Activo',
          url:
              'https://www.imss.gob.mx/sites/all/statics/salud/calculadorcalorias/trotar.png',
          onTap: () {
            actividadProvider.selectActividad('Moderadamente Activo');
            actividadProvider.setValorActividad('Moderadamente Activo');
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ImgActividadButton(
          actividadProvider: actividadProvider,
          text: 'Muy Activo',
          url:
              'https://www.imss.gob.mx/sites/all/statics/salud/calculadorcalorias/trotar.png',
          onTap: () {
            actividadProvider.selectActividad('Muy Activo');
            actividadProvider.setValorActividad('Muy Activo');
          },
        ),
        const SizedBox(
          width: 0,
        ),
      ],
    );
  }
}
