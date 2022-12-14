import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  get rooatBundle => null;

List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    loadSuraDetails(args.suraIndex);

    return Stack(
        children: [

          Image.asset('assets/images/bg3.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill),

          Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                  '${args.suraNames}',
                  style: TextStyle(color: MyThemeData.colorBlack)),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
          body:Container(
            margin:EdgeInsets.symmetric(vertical: 24,horizontal:9 ) ,
  decoration:BoxDecoration(
    color:Colors.white,
    borderRadius: BorderRadius.circular(12)
  ) ,

            child:Center(
              child: verses.isEmpty?
              Center(child:CircularProgressIndicator()):
               ListView.separated(
               separatorBuilder:(buildContext,index){
    return Container(
    height :1,
    margin: EdgeInsets.symmetric(horizontal: 12),
    width: double.infinity ,
    color:MyThemeData.primaryColor,
    );
    },
                 itemBuilder: (buildContext,index){
                 return Container(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(verses[index]
+'{${index+1}'
                       ,
                     style:TextStyle(fontSize: 18

                     ),textAlign:TextAlign.center,
                      textDirection: TextDirection.rtl,
                   ),
                   ),
                 );
               },
               itemCount: verses.length,)
  ),
            )
          ) ,

    ],);
  }

  void loadSuraDetails(int index) async {
    String fileContent = await rootBundle.loadString(
        'assets/files/${index + 1}.txt');
//print(fileContent);
    List<String> ayat = fileContent.split('\n');
   this.verses=ayat;
  setState((){

  });

  }
}
class SuraDetailsArgs{
  String suraNames;
  int suraIndex;
  SuraDetailsArgs(this.suraNames,this.suraIndex);
}



