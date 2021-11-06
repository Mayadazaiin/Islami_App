import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadethtab.dart';

import 'HadethDetailsScreen.dart';

class HadethNameWidget extends StatelessWidget{
  HadethItem item ;
  HadethNameWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen .routeName,
        arguments:item);

      },
      child:Container(
      padding: EdgeInsets.all(0),
      child: Text(item.title,style: TextStyle(fontSize: 24

      ),
      textAlign:TextAlign.center,
      )
    )
    );
  }
  
}