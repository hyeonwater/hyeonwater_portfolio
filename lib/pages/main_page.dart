import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/pages/portfolio_page.dart';
import 'package:my_portfolio/utill/common.dart';

import 'about_page/about_main_page.dart';


class MainPage extends StatelessWidget {
  static const String routeName = '/MainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mediaHeight(context, 0.1),
            ),
            Image.asset('assets/png/main.png',height: mediaHeight(context, 0.7),),
            SizedBox(
              height: mediaHeight(context, 0.07),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                    child: Text('ABOUT',style: TextStyle(color: Colors.black),), onPressed: (){Get.to(AboutMainPage(),transition: Transition.fadeIn);}),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                    child: Text('PORTFOLIO',style: TextStyle(color: Colors.black),), onPressed: () => Get.to(PortfolioPage()))
              ],
            )
          ],
        ),
      ),
    );
  }
}
