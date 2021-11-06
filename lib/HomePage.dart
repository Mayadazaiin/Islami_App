import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/radio/radioTab.dart';
import 'sebha/sebhaTab.dart';
import 'Quran/QuranTab.dart';
import 'hadeth/hadethtab.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [

          Image.asset('assets/images/bg3.jpg',
              width:double.infinity,
              height: double.infinity,
              fit: BoxFit.fill),

          Scaffold(

          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title:Text('Islami',style:TextStyle(color:MyThemeData.colorBlack)),
            backgroundColor: Colors.transparent,

          ),
              backgroundColor: Colors.transparent,
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                    canvasColor: MyThemeData.primaryColor),
                child:
                BottomNavigationBar(
                    onTap: (index) {
                      currentPage = index;
                      setState(() {

                      } );
                    },
                    currentIndex: currentPage,
                    selectedItemColor: MyThemeData.selectedIconColor,
                    unselectedItemColor:
                    MyThemeData.unselectedIconColor,
                    backgroundColor: MyThemeData.primaryColor,


                    items: [
                      BottomNavigationBarItem(
                          label: '',
                          icon:
                          Image.asset('assets/images/quran.png')),
                      BottomNavigationBarItem(
                          label: '',
                          icon:
                          Image.asset('assets/images/hadeth.png')),
                      BottomNavigationBarItem(
                          label: '',
                          icon: Image.asset('assets/images/sebha.png')),
                      BottomNavigationBarItem(
                          label: '',
                          icon: Image.asset('assets/images/radio.png')),


                    ]
                ),
              ),
              body: Container(child: getCurrentPage()),
          ),
        ]
    );
  }

  Widget getCurrentPage() {
    if (currentPage == 0) {
      return QuranTab();
    } else if (currentPage == 1) {
      return hadethtab();
    } else if (currentPage == 2) {
      return sebhaTab();
    } else
      return radioTab();
  }
}


