import 'package:calculadora_app/providers/altura_provider.dart';
import 'package:calculadora_app/providers/edad_provider.dart';
import 'package:calculadora_app/providers/genero_provider.dart';
import 'package:calculadora_app/providers/nivelActividad_provider.dart';
import 'package:calculadora_app/providers/peso_provider.dart';
import 'package:calculadora_app/screens/calculadora_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GeneroProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NivelActidadProviders(),
        ),
        ChangeNotifierProvider(
          create: (context) => EdadProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AlturaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PesoProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: CalculadoraScreen(),
      ),
    );
  }
}
