import 'package:flutter/material.dart';

class ContainerDecor {
  static const BoxDecoration boxDecor1 = const BoxDecoration(
      color: Color(0xFf363f93),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
            color: Color(0x30363f93),
            offset: Offset(-9.0, 0.0),
            blurRadius: 5.0,
            spreadRadius: 2.0)
      ]);
}
