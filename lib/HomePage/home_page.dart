import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/HomePage/desktop_page.dart';
import 'package:my_portfolio/HomePage/mobilePage.dart';
import 'package:my_portfolio/projects_cards/desktop_bayabas_cards.dart';
import 'package:my_portfolio/projects_cards/desktop_kaminavi_card.dart';
import 'package:my_portfolio/projects_cards/portfoilo_card.dart';

import '../common.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,BoxConstraints constraints){
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: constraints.maxWidth > 1000 ? EdgeInsets.only(bottom: 100,right: 100,top: 70) : EdgeInsets.only(right: 20,top: 70),
                  child: constraints.maxWidth > 1000
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: CupertinoSwitch(
                          activeColor: Colors.grey,
                          value: darkMode,
                          onChanged: (value){
                            darkMode = value;
                            setState(() {
                              darkMode != false;
                              Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                            });
                          },
                        ),
                      ),
                      Text(darkMode ? 'Dark mode' : 'Light mode'),
                    ],
                  )
                    : Column(
                    children: [
                      Container(
                        child: CupertinoSwitch(
                          activeColor: Colors.grey,
                          value: darkMode,
                          onChanged: (value){
                            darkMode = value;
                            setState(() {
                              darkMode != false;
                              Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                            });
                          },
                        ),
                      ),
                      Text(darkMode ? 'Dark mode' : 'Light mode'),
                    ],
                  )
                ),
                Container(
                  child: constraints.maxWidth > 1000
                      ? DeskTopPage(darkMode: darkMode,)
                      : MobilePage(darkMode: darkMode,),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: BottomAppBar(
                    color: darkMode ?Color(0xff2D2F36) :Color(0xffFDFDFD),
                    elevation: 0,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                          "HYEONSOO KIMⓒ2023",
                          style: TextStyle(
                              color:  darkMode ? Color(0xffffffff) : Color(0xff747474) ,
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
