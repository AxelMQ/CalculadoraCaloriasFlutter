import 'package:calculadora_app/widgets/components/input_text_form_field.dart';
import 'package:calculadora_app/widgets/components/title_text_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/peso_provider.dart';

class PesoWidget extends StatelessWidget {
  const PesoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pesoProvider = Provider.of<PesoProvider>(context);
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const TitleTextContainer(text: 'Cuanto Pesas?'),
        InputTextFormField(
            onChanged: (value) {
              final nuevoPeso = int.tryParse(value) ?? 0;
              pesoProvider.setPeso(nuevoPeso);
            },
            hintText: '69',
            text: 'kg'),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
