import 'package:calculadora_app/widgets/components/input_text_form_field.dart';
import 'package:calculadora_app/widgets/components/title_text_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/altura_provider.dart';

class AlturaWidget extends StatelessWidget {
  const AlturaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final alturaProvider = Provider.of<AlturaProvider>(context);
    return Column(
      children: [
        const TitleTextContainer(text: 'Cuanto mides?'),
        InputTextFormField(
            onChanged: (value) {
              final nuevaAltura = int.tryParse(value) ?? 0;
              alturaProvider.setAltura(nuevaAltura);
            },
            hintText: '170',
            text: 'cm')
      ],
    );
  }
}
