import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circleName({
  required String text,
  required Color color,
  required IconData icon,
  required int index,
  required dynamic theme,
}){
  return GestureDetector(
    child: Column(
      children: [
        CircleAvatar(
          maxRadius: 30,
        ),
      ]
    ),
  );
}