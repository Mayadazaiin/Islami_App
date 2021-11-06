import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Quran/SuraDetailsScreen.dart';

class SuraNameItem extends StatelessWidget{
  String suraNames;
  int suraIndex;
  SuraNameItem(this.suraNames,this.suraIndex);
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap:(){
       Navigator.pushNamed(context, SuraDetailsScreen.routeName,
       arguments: SuraDetailsArgs(suraNames, suraIndex)

       );
     },
     child:Row(
     mainAxisAlignment:MainAxisAlignment.center ,
     children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('${suraNames}',style: TextStyle(
             fontSize: 24
         ),),
       ),
     ],
     )
   );
  }

}