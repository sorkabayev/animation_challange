import 'package:flutter/material.dart';

MaterialButton button({color, text, textColor}) {
  return MaterialButton(
    elevation: 1,
    color: color,
    textColor: textColor,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
    onPressed: () {},
    child: Text(text),
  );
}