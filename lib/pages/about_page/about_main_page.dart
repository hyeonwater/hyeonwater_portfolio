import 'package:flutter/material.dart';
import 'package:my_portfolio/utill/common.dart';
import 'about_page_body.dart';
import 'about_page_header_.dart';

class AboutMainPage extends StatelessWidget {
  static const String routeName = '/aboutMainPage';
  const AboutMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutPageHeader(),
            AboutPageBody()
          ],
        ),
      ),
    );
  }
}
