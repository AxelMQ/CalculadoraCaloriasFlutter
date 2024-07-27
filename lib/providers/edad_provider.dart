import 'package:flutter/material.dart';

class EdadProvider extends ChangeNotifier{
  int _edad = 0;

  int get edad => _edad;

  void setEdad (int nuevaEdad){
    _edad = nuevaEdad;
    notifyListeners();
  }

}