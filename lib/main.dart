import 'package:flutter/material.dart';
import 'package:islami_app/HomePage.dart';
import 'package:islami_app/Quran/SuraDetailsScreen.dart';
import 'package:islami_app/hadeth/HadethDetailsScreen.dart';

void main() {
  runApp(MyApp());
}
class MyThemeData{
  static final primaryColor=Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconColor=Color.fromRGBO(104, 77, 39, 1.0);
  static final unselectedIconColor=Color.fromRGBO(66, 47, 19, 1.0);
  static final colorBlack=Color.fromRGBO(5, 5, 5, 5);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        bottomNavigationBarTheme:BottomNavigationBarThemeData(
          backgroundColor: MyThemeData.primaryColor,
          selectedIconTheme:IconThemeData(
            color:MyThemeData.selectedIconColor,
            size: 24
          ),
         unselectedIconTheme: IconThemeData(
           color: MyThemeData.unselectedIconColor
         ,size:24)
        ) ,
        primaryColor:MyThemeData.primaryColor,
         progressIndicatorTheme: ProgressIndicatorThemeData(color:MyThemeData.primaryColor)
      ),
      title: 'Flutter Demo',
      routes: {
        HomePage.routeName:(buildContext)=>HomePage(),
      SuraDetailsScreen.routeName:(buildContext)=>SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(buildContext)=>HadethDetailsScreen(),

      },
initialRoute:HomePage.routeName,
    );

  }
}

