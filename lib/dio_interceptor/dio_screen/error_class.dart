
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorText{
  final String errorMessage;
  ErrorText(this.errorMessage);
}

late ErrorText errorText;
Widget getErrorText(){
  return Text(errorText.errorMessage.toString());
}