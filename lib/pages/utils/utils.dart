import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DecimalTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Permite solo números y un punto decimal
    final regExp = RegExp(r'^\d*\.?\d*\$');
    if (newValue.text.isEmpty) {
      return newValue;
    } else if (regExp.hasMatch(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}
