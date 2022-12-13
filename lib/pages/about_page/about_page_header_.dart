import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utill/common.dart';
import 'package:random_text_reveal/random_text_reveal.dart';

class AboutPageHeader extends StatelessWidget {
  const AboutPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:baseAllPadding(context),
      height: mediaHeight(context, 0.4),
      width: mediaWidth(context, 1),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // RandomTextReveal(
          //   text: '안녕하세요,\nFlutter 개발자 김현수입니다.',
          //   duration: Duration(seconds: 3),
          //   style: TextStyle(
          //     fontSize: 36,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   curve: Curves.easeIn,
          // ),
          Text('안녕하세요,\nFlutter 개발자 김현수입니다.',style: TextStyle(fontSize: 40),),
        ],
      ),
    );
  }
}
