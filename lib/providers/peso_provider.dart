import 'package:flutter/material.dart';

class PesoProvider extends ChangeNotifier{
  int _peso = 0;

  int get peso => _peso;

  void setPeso(int nuevoPeso){
    _peso = nuevoPeso;
    notifyListeners();
  }
}