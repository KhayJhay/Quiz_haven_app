import 'package:flutter/material.dart';
import 'package:quiz_haven_main/enums/enum.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  late BoxScrollDirection _scroll;
  BoxScrollDirection get scroll => _scroll;

  void setScrollDirection(BoxScrollDirection scroll) {
    _scroll = scroll;
    notifyListeners();
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
