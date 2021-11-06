import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/HadethNameWidget.dart';

class hadethtab extends StatefulWidget{
  @override
  State<hadethtab> createState() => _hadethtabState();
}

class _hadethtabState extends State<hadethtab> {
  @override
  Widget build(BuildContext context) {
    if(allHadethItem.isEmpty)
    loadhadethFiles();
   return Column(
     children: [
       Expanded(flex: 2,
         child: Image.asset('assets/images/ahadeth_icon.png'),),
       Expanded(
         flex: 5,
           child:allHadethItem.isEmpty?
               Center(child: CircularProgressIndicator()):
               ListView.separated(itemBuilder: (buildContext,index){
                 return HadethNameWidget(allHadethItem[index]);
               },
                 itemCount: allHadethItem.length,
separatorBuilder: ( buildContext,index){
                 return Container(
                   color:Theme.of(context).primaryColor,
                   height: 1,
                   margin: EdgeInsets.symmetric(horizontal: 24),
                 );
},
               )


       )
     ],

   );
  }

  List<HadethItem>allHadethItem=[];

 Future<void> loadhadethFiles() async {
    List<HadethItem>allHadethData=[];
    String fileContent = await
   rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>allAhadeth=fileContent.split('#\r\n');





    for(int i=0;i<allAhadeth.length;i++){
      List<String> singleHadethContent = allAhadeth[i].split('\n');
      String title= singleHadethContent[0];
      String content='';
      for(int j=0;j<singleHadethContent.length;j++){
     content+=singleHadethContent[j]+' ';
      }
      HadethItem item=HadethItem(title, content);
      allHadethData.add(item);
    }
    allHadethItem=allHadethData;
    setState((){

    });
     //print(fileContent);
  }
}
class HadethItem{
  String title;
  String content;
  HadethItem(this.title,this.content);
}