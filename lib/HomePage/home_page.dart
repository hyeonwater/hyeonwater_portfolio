import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/HomePage/desktop_page.dart';
import 'package:my_portfolio/HomePage/mobilePage.dart';
import 'package:my_portfolio/projects_cards/bayabas_cards.dart';
import 'package:my_portfolio/projects_cards/kaminavi_card.dart';
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
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100,right: 100,top: 70),
                  child: Row(
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
                  ),
                ),
                Container(
                  child: constraints.maxWidth > 800
                      ? DeskTopPage(darkMode: darkMode,)
                      : MobilePage(darkMode: darkMode,),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
