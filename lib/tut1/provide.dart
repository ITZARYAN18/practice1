import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';

class Provide extends ChangeNotifier{
  int number;
  Provide({
    this. number = 0,
});
  void Increase(){
    number++;
    notifyListeners();
  }
  void Decrease(){
    number--;
    notifyListeners();
  }
}
