import 'package:flutter/material.dart';


Widget circleText({
  required String text,
  required Color color,
  required int index,
  required Image AssetImage,
  required dynamic theme,

}){
  return GestureDetector(
    onTap: (){},
    child: Column(
      children: [
        CircleAvatar(
          maxRadius: 30,
          backgroundColor: theme.cardTheme.color,
          backgroundImage: AssetImage.image,
        ),
        Text(text,style: theme.textTheme.titleMedium,textAlign: TextAlign.center,),
      ],
    ),
  );
}