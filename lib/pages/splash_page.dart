import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/pages/main_page.dart';
import 'package:my_portfolio/utill/common.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).whenComplete(() => Get.offAll(MainPage(),transition: Transition.fadeIn));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: mediaWidth(context, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              totalRepeatCount: 2,
              animatedTexts: [TypewriterAnimatedText('<HyeonSoo KIM>',speed: Duration(milliseconds: 80))],
            ),
          ],
        ),
      ),
    );
  }
}
