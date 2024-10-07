import 'package:flutter/material.dart';

abstract class TextFieldStyle {
  static InputDecoration inputDecoration = const InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      border: OutlineInputBorder(),
      isCollapsed: true,
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)));
}
