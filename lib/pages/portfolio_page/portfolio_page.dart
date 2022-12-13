import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/pages/main_page.dart';
import 'package:my_portfolio/pages/portfolio_page/portfolio_bayabas_page.dart';
import 'package:my_portfolio/pages/portfolio_page/portfolio_kaminavi_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utill/common.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

int _currentIndex = 0;

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          // CupertinoButton(child: Icon(Icons.home_outlined,color: Colors.black,), onPressed:()=> Get.to(()=> MainPage())),
          CarouselSlider(
            items: [
              PortfolioBayabas(),
              PortfolioKaminavi()
            ],
            options:CarouselOptions(
                height: mediaHeight(context, 1),
                initialPage: _currentIndex,
                enlargeCenterPage: false,
                aspectRatio: 1/1,
                viewportFraction: 1.0,
                onPageChanged: (index, index2) => setState(() => _currentIndex = index),
                enableInfiniteScroll: false
            ),
          ),
          Container(
            margin: baseAllPadding(context),
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: 2,
              effect: WormEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.black45,
                dotWidth: mediaHeight(context, 0.01),
                dotHeight: mediaHeight(context, 0.01),
              ),
            ),
          )
        ],
      )
    );
  }
}
