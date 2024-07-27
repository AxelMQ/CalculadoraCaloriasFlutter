import 'package:calculadora_app/widgets/components/title_text_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/edad_provider.dart';
import 'components/input_text_form_field.dart';

class EdadWidget extends StatelessWidget {
  const EdadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final edadProvider = Provider.of<EdadProvider>(context);
    return Column(
      children: [
        const TitleTextContainer(
          text: 'Cuantos años tienes?',
        ),
        InputTextFormField(
          onChanged: (value) {
            final nuevaEdad = int.tryParse(value) ?? 0;
            edadProvider.setEdad(nuevaEdad);
          },
          hintText: '99',
          text: 'años',
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
