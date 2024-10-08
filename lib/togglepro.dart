import 'package:flutter/material.dart';
class ToggleProvider extends ChangeNotifier{
  bool _isOn=false;
  bool get isOn=>_isOn;

  void toggleSwitch(){
_isOn=!_isOn;
notifyListeners();

  }
}