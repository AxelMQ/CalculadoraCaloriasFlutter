import 'package:flutter/material.dart';

class GeneroProvider extends ChangeNotifier{
  String _selectedGenero = 'Hombre';
  int _valorGenero = 5;
  
  String get selectedGenero => _selectedGenero;
  int get valorGenero => _valorGenero;

  void selectGenero(String genero){
    _selectedGenero = genero;
    notifyListeners();
  }

  void setValorGenero(String genero){
    if (_selectedGenero == 'Hombre') {
      _valorGenero = 5;
    } else if(_selectedGenero == 'Mujer'){
      _valorGenero = -161;
    }
  }
}