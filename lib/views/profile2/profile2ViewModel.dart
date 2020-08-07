import 'package:asthma_management/views/signup/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile2ViewModel with ChangeNotifier {
  Profile2ViewModel();

  int _number = 1;
  int get number => _number;

  List<bool> _trigger = [false, false, false, false];

  List<String> _phone = ["1", "2", "3"];
  List<String> get phone => _phone;

  List<bool> get trigger => _trigger;

  void addNumber(String phone, int index) {
    _phone[index] = phone;
    notifyListeners();
  }

  void setBool(int index) {
    _trigger[index] = !_trigger[index];
    notifyListeners();
  }

  void increment() {
    _number <= 2
        ? _number++
        : Get.snackbar(
            'Hey there',
            'Maximum of $_number contacts allowed',
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING,
            leftBarIndicatorColor: buttonColor,
            backgroundColor: Colors.lightGreen,
            borderRadius: 0,
            duration: Duration(seconds: 4),
            icon: Icon(Icons.error)
            // backgroundColor: buttonColor
          );
    notifyListeners();
  }

  void decrement() {
    _number--;
    notifyListeners();
  }
}
