import 'package:flutter/material.dart';
import 'package:islami_app/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        HomePage.routeName:(buildContext)=>HomePage()
      },
initialRoute:HomePage.routeName,
    );
  }
}

