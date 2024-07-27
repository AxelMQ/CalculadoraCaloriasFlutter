import 'package:calculadora_app/providers/altura_provider.dart';
import 'package:calculadora_app/providers/edad_provider.dart';
import 'package:calculadora_app/providers/genero_provider.dart';
import 'package:calculadora_app/providers/nivelActividad_provider.dart';
import 'package:calculadora_app/providers/peso_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/altura_widget.dart';
import '../widgets/calcular_calorias_button.dart';
import '../widgets/edad_widget.dart';
import '../widgets/header_text_widget.dart';
import '../widgets/nivel_actividad.dart';
import '../widgets/peso_widget.dart';
import '../widgets/select_genero_widget.dart';

class CalculadoraScreen extends StatelessWidget {
  const CalculadoraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final generoProvider = Provider.of<GeneroProvider>(context);
    final actividadProvider = Provider.of<NivelActidadProviders>(context);
    final edadProvider = Provider.of<EdadProvider>(context);
    final alturaProvider = Provider.of<AlturaProvider>(context);
    final pesoProvider = Provider.of<PesoProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.calculate, color: Colors.black,),
              const SizedBox(width: 5),
              Text('Calorias Diarias', style: GoogleFonts.titilliumWeb( fontSize: 25, color: Colors.black87),),
            ],
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          toolbarOpacity: 1,
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderTextWidget(),
                Container(
                  height: size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SelectGeneroWidget(generoProvider: generoProvider),
                        const EdadWidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            AlturaWidget(),
                            PesoWidget(),
                          ],
                        ),
                        NivelActividadWidget(
                            actividadProvider: actividadProvider),
                        const SizedBox(height: 10),
                        CalcularCaloriasButton(
                            edadProvider: edadProvider,
                            alturaProvider: alturaProvider,
                            pesoProvider: pesoProvider,
                            generoProvider: generoProvider,
                            actividadProvider: actividadProvider),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
