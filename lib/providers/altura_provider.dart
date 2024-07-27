import 'package:flutter/material.dart';

class AlturaProvider extends ChangeNotifier{
  int _altura = 0;

  int get altura => _altura;

  void setAltura(int nuevaAltura){
    _altura = nuevaAltura;
    notifyListeners();
  }
}