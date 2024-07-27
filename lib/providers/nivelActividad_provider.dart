// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NivelActidadProviders extends ChangeNotifier {
  String _selectActividad = '';
  double _valorActividad = 0;

  String get selectedActidad => _selectActividad;
  double get valorActidad => _valorActividad;

  void selectActividad(String actividad) {
    _selectActividad = actividad;
    notifyListeners();
  }

  void setValorActividad(String actividad) {
    if (actividad == 'Sedentario') {
      _valorActividad = 1.2;
    } else if (actividad == 'Ligeramente Activo') {
      _valorActividad = 1.375;
    } else if (actividad == 'Moderadamente Activo') {
      _valorActividad = 1.55;
    } else if (actividad == 'Muy Activo') {
      _valorActividad = 1.725;
    }
  }
}
