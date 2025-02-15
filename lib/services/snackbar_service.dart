import 'package:flutter/material.dart';

class SnackBarService{

  static final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  static void showSnackBar(String message){
    scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }


}