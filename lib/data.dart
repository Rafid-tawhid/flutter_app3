import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  int val=0;
  Increment()
  {
    val++;
  }
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
