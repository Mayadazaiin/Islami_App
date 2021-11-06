import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadethtab.dart';

import '../main.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName='hadeth_details';
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as HadethItem;
    return Stack(children: [
        Image.asset(
            'assets/images/bg3.jpg',
          fit: BoxFit.fill,
            width: double.infinity,
            ),
        Scaffold(
          appBar: AppBar(
            title: Text(args.title,style:TextStyle(color:MyThemeData.colorBlack)),
    backgroundColor: Colors.transparent,),
          backgroundColor: Colors.transparent,
body: Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24)
  ),
  padding:EdgeInsets.all(12),
  margin:EdgeInsets.symmetric(vertical: 48,horizontal: 24),
  child: SingleChildScrollView(
    child: Text(args.content,style: TextStyle(
      fontSize:18,
    ),
    textAlign: TextAlign.center,),
  ),
),

)
      ],
    );
  }
}
