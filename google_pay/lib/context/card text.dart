import 'package:flutter/material.dart';

Widget cardText({
  required String text,
  required Color color,
  required IconData icon,
  required int index,
  required dynamic theme,
})
{
  return GestureDetector(
    onTap:(){},
    child: Column(
     children: [
       SizedBox(
         height: 70,
         width: 70,
         child: Card(color: theme.cardTheme.color, child: Icon(icon),)
       ),
       Text(text,style: theme.textTheme.titleMedium,textAlign: TextAlign.center,),
     ],
    ),
  );
}