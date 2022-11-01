import 'package:flutter/material.dart';
import 'package:my_portfolio/utill/common.dart';
import 'about_page_body.dart';
import 'about_page_header_.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = '/aboutPage';
  const AboutPage({Key? key}) : super(key: key);

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
