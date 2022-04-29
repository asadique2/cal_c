import 'package:cal_c/constant/colors.dart';
import 'package:cal_c/ui/login_screen/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

import '../../constant/toast.dart';

class IntroScreenViewModel extends BaseViewModel {
  bool termCondition = false;
  bool isLogedIn = false;
  void checkTermCondition(value) {
    termCondition = !termCondition;
    notifyListeners();
  }

  login() {
    if (!termCondition) {
      return defaultToast();
    } else {
      isLogedIn = true;
    }
  }
}
