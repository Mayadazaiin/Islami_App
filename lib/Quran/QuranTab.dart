import 'package:flutter/cupertino.dart';

import '../main.dart';
import 'SuraNameItem.dart';

class QuranTab extends StatelessWidget{
  final List<String>suraNames=[
  "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Expanded(
          flex:12,
          child: Image.asset('assets/images/quran_top_logo.png',),

        ),
        Container(
          height :1,
          width: double.infinity ,
          color:MyThemeData.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Sura Name'),
        ),
        Container(
     height :1,
           width: double.infinity ,
          color:MyThemeData.primaryColor,
        ),
        Expanded(
          flex: 35,
          child: ListView.separated(
            separatorBuilder: (buildContext,index){
             return Container(
                height :1,
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity ,
                color:MyThemeData.primaryColor,
              );
            },
            itemBuilder:(buildContext,index){
            return SuraNameItem(suraNames[index],index);
          },itemCount:suraNames.length,
        )
        ),
      ],
    );

  }

}