import 'package:flutter/cupertino.dart';

class Profile2ViewModel with ChangeNotifier {
  Profile2ViewModel();

  int _number = 1;
  int get number => _number;

  List<bool> _trigger = [false, false, false, false];

  List<bool> get trigger => _trigger;

  void setBool(int index){
    _trigger[index] = !_trigger[index];
    notifyListeners();
  }

  void increment(){
    _number++;
    notifyListeners();
  }

  void decrement(){
    _number--;
    notifyListeners();
  }

}