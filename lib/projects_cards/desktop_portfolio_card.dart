import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DeskTopPortfolioCard extends StatelessWidget {
  const DeskTopPortfolioCard({Key? key,required this.darkMode}) : super(key: key);

  final bool darkMode;

  final List _frameWork = const[
    "Flutter v3.3.0",
    "Flutter Web",
    "Firebase",
  ];

  final List _packages = const[
    "get",
    "url_launcher",
    "percent_indicator"
  ];
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CupertinoButton(
                child: Text('X',style: TextStyle(
                    color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                    fontWeight: FontWeight.w400,
                    fontFamily: "NotoSansCJKKR",
                    fontStyle:  FontStyle.normal,
                    fontSize: 36
                ),),
                onPressed: () => Get.back()),
            Container(
              padding: baseAllPadding(context),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: mediaHeight(context, 1),
                      padding: baseHorizontalPadding(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Portfolio (Flutter Web)',style: TextStyle(
                              color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                              fontWeight: FontWeight.w700,
                              fontFamily: "NotoSansCJKKR",
                              fontSize: 20
                          ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Divider(
                                thickness: 1,
                              )
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text("프로젝트 설명", style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 15,
                                height: 1.5
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text("Flutter에는 모바일 앱 지원 말고도 Web 플랫폼을 지원을 하고 있습니다. Flutter 개발자로서 Flutter Web도 개발해보고 싶은 생각이 생겨 포트폴리오로 만들어 보았습니다. ",style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 15
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "개발 기간",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize:15
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "2023년 01월 ~ 2023년 1월",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize:14
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "프로젝트 기여도",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize:15
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 400,bottom: 15),
                            child: LinearPercentIndicator(
                              padding: EdgeInsets.zero,
                              animation: true,
                              lineHeight: 20,
                              animationDuration: 1000,
                              percent: 1,
                              barRadius: Radius.circular(30),
                              center: Text("100%",style: TextStyle(
                                  color: darkMode ? Color(0xff2c2c2c) :Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 15
                              ),),
                              backgroundColor: darkMode ? Color(0xff717171) : Color(0xffE8E8E8),
                              progressColor: darkMode ? Color(0xffFFFFFF) : Color(0xff7b7b7b),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "개발 후 느낌점",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Flutter web은 평상시에 사용했던 Dart언어 그대로 사용할 수 있어서 편리하다고 생각했습니다. 하지만 정보가 많이 없고 다른 web지원하는 플랫폼보다는 덜 부드럽다는 느낌이 들었습니다.",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 15,
                                  height: 1.5
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "적용한 프레임워크 및 주요 패키지",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "·프론트엔드 프레임워크",
                              style: TextStyle(
                                  color:darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 14
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                                children: [
                                  for(int i = 0; i < _frameWork.length; i++)
                                    Container(
                                      margin:EdgeInsets.only(right: mediaWidth(context, 0.01)),
                                      padding:EdgeInsets.symmetric(horizontal: mediaWidth(context, 0.01),vertical: mediaHeight(context, 0.003)),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)
                                          ),
                                          color: Color(0xffF2F3F7)
                                      ),
                                      child: Text("${_frameWork[i]}", style:
                                      TextStyle(
                                          color:Color(0xff555969),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "NotoSansCJKKR",
                                          fontSize: 12
                                      ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                ]
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "·주요 패키지",
                              style: TextStyle(
                                  color:darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: 14
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: GridView.count(
                                shrinkWrap: true,
                                crossAxisCount: 5,
                                mainAxisSpacing: 10,
                                childAspectRatio: 7/1,
                                children: [
                                  for(int i = 0; i < _packages.length; i++)
                                    Container(
                                      margin:EdgeInsets.only(right: mediaWidth(context, 0.01)),
                                      padding:EdgeInsets.symmetric(horizontal: mediaWidth(context, 0.01),vertical: mediaHeight(context, 0.003)),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)
                                          ),
                                          color: Color(0xffF2F3F7)
                                      ),
                                      child: Text("${_packages[i]}", style:
                                      TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color:Color(0xff555969),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "NotoSansCJKKR",
                                          fontSize: 12
                                      ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: mediaHeight(context, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/dark.png'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
