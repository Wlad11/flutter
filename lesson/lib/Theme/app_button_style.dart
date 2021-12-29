import 'package:flutter/material.dart';


abstract class AppButtonStyle {
 static final ButtonStyle linkButton = ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.all(Colors.tealAccent),
      textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 25)));
}
