import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';

Widget searchButtons(String text, onPressed) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: searchColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(text),
    ),
  );
}
