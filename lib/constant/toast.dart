
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'colors.dart';

defaultToast(){
  return Fluttertoast.showToast(
      msg: "Please Accept term&condition",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: kSecondaryColor,
      textColor: Colors.white,
      fontSize: 12.0);
}

successToast(){
    return Fluttertoast.showToast(
        msg: "Login Success !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: kSuccessColor,
        textColor: Colors.white,
        fontSize: 12.0);
}

warningToast(){
    return Fluttertoast.showToast(
        msg: " Warning !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: kWarningColor,
        textColor: Colors.white,
        fontSize: 12.0);
}