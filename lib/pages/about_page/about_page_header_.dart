import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utill/common.dart';

class AboutPageHeader extends StatelessWidget {
  const AboutPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaHeight(context, 0.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('안녕하세요,'),
          Text('<Flutter 개발자 김현수입니다.>')
        ],
      ),
    );
  }
}
