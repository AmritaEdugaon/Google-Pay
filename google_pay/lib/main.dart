import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home page/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode=ThemeMode.system;
  void toggleTheme(){
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark?ThemeMode.light:ThemeMode.dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //lite mode
      theme: ThemeData(
        canvasColor: Colors.grey.shade200,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        //for searchbox
        searchBarTheme: SearchBarThemeData(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          textStyle:WidgetStatePropertyAll(TextStyle(color: Colors.black),),
          hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.blueGrey)),
          surfaceTintColor: WidgetStatePropertyAll(Colors.black),
        ),
        //for text
        textTheme: TextTheme(
            titleLarge: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
            titleMedium: TextStyle(color: Colors.black,fontSize: 13,),
            titleSmall: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
             bodyLarge: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
             bodySmall: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),
          labelSmall: TextStyle(color: Colors.white,fontSize: 10)
        ),
        badgeTheme: BadgeThemeData(backgroundColor: Colors.redAccent.shade100),
        cardTheme: CardThemeData(color: Colors.blue.shade50),
        iconTheme: IconThemeData(color: Colors.blue.shade800,size: 30,),
        primaryColorDark: Colors.blue.shade900,
        dividerColor: Colors.black
      ),
      //dark mode
      darkTheme: ThemeData(
        canvasColor: Colors.grey.shade900,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        //for searchbox
        searchBarTheme: SearchBarThemeData(
          backgroundColor: WidgetStatePropertyAll(Colors.white10
          ),
          textStyle:WidgetStatePropertyAll(TextStyle(color: Colors.black),),
          hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.blueGrey)),
          surfaceTintColor: WidgetStatePropertyAll(Colors.black),
        ),
        //for text
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.white,fontSize: 14,),
          titleSmall: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),
          bodySmall: TextStyle(color: Colors.blueGrey,fontSize: 15),
        ),
        cardTheme: CardThemeData(color: Colors.blue),
        iconTheme: IconThemeData(color: CupertinoColors.white,size: 30,),
        primaryColorDark: Colors.blue.shade400,
        dividerColor: Colors.white
      ),
      home: HomeScreen(onToggleTheme: toggleTheme,),
      themeMode: _themeMode,
    );
  }
}
