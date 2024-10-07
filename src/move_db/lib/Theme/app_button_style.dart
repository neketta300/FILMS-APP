import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  Color buttonColor = const Color.fromARGB(255, 1, 180, 228);
  static final ButtonStyle linkButton = ButtonStyle(
    alignment: AlignmentDirectional.topStart,
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
              color: Color.fromARGB(255, 1, 180, 228), width: 1)),
    ),
    textStyle: WidgetStateProperty.all(
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
    foregroundColor: WidgetStateProperty.all(
      const Color.fromARGB(255, 1, 180, 228),
    ),
  );

  static final ButtonStyle inpuButton = ButtonStyle(
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 22, vertical: 5)),
      shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      textStyle: WidgetStateProperty.all(
          const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      backgroundColor:
          WidgetStateProperty.all(const Color.fromARGB(255, 1, 180, 228)));
}
