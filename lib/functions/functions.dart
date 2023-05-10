import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavFunctions {
  static goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  static exitApp(BuildContext context) {
    return SystemNavigator.pop();
  }
}
