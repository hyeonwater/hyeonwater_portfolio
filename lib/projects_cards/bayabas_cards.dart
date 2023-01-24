import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BayaBasCard extends StatelessWidget {
  const BayaBasCard({Key? key,required this.darkMode}) : super(key: key);

  final bool darkMode;

  final List _frameWork = const[
    "Flutter v3.3.0",
    "Firebase",
    "Kakao SDK",
    "RESTfulAPI",
  ];

  final List _packages = const[
    "get",
    "permission_handler",
    "table_calendar",
    "kakao_flutter_sdk",
    "google_sign_in",
    "sign_in_with_apple",
    "shared_preferences"
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
                      fontSize: mediaHeight(context, 0.035)
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
                            Text('바야바즈',style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: mediaHeight(context, 0.021)
                            ),
                            ),
                            Container(
                                child: Divider(
                                  thickness: mediaWidth(context, 0.001),
                                )
                            ),
                            Text("프로젝트 설명", style: TextStyle(
                                    color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "NotoSansCJKKR",
                                    fontSize: mediaWidth(context, 0.016)
                                ),
                            ),
                            Text("바야바즈는 습관을 개선하여 탈모를 예방한다는 목표를 가지고 만들어진 앱으로 습관 관리 개선 및 나의 두피 진단 등 콘텐츠를 이용할 수 있으며 그로 인해 얻어지는 화폐 개념의 구아바를 이용하여 제품 및 여러 콘텐츠를 즐길 수 있는 앱 입니다.프런트 개발자 2명, 백엔드 개발자 2명으로 이루어진 팀에서 프런트엔드 개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다.프런트 개발 중 50%를 직접 구현하였으며 UI, RESTFul API 서버 통신, 배포, 유지보수등 많은 부분을 맡아 진행하였습니다. 또한 메인 콘텐츠로 개발된 진단부분의 경우 기획을 직접 하였으며, 디자인 작업에 참여 하였습니다.",style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: mediaHeight(context, 0.016)
                            ),),
                            Text(
                                "개발 기간",
                                style: TextStyle(
                                    color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "NotoSansCJKKR",
                                    fontSize: mediaHeight(context, 0.016)
                                ),
                            ),
                            Text(
                                "2022년 05월 ~ 2022년 7월",
                                style: TextStyle(
                                    color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "NotoSansCJKKR",
                                    fontSize: mediaHeight(context, 0.015)
                                ),
                            ),
                            Text(
                              "프로젝트 기여도",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.016)
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: mediaWidth(context, 0.25)),
                              child: LinearPercentIndicator(
                                padding: EdgeInsets.zero,
                                animation: true,
                                lineHeight: mediaHeight(context, 0.015),
                                animationDuration: 1000,
                                percent: 0.75,
                                barRadius: Radius.circular(30),
                                center: Text("75%",style: TextStyle(
                                    color: darkMode ? Color(0xff2c2c2c) :Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "NotoSansCJKKR",
                                    fontSize: mediaHeight(context, 0.015)
                                ),),
                                backgroundColor: darkMode ? Color(0xff717171) : Color(0xffE8E8E8),
                                progressColor: darkMode ? Color(0xffFFFFFF) : Color(0xff7b7b7b),
                              ),
                            ),
                            Text(
                              "개발 후 느낌점",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.016)
                              ),
                            ),
                            Text(
                              "주니어 개발자 2명이서 처음부터 끝까지 진행하다 보니 많이 아쉬움이 남는 프로젝트입니다. 개발하며 많은 경험과 스킬업을 진행하며 하나씩 보이는 개발 부채들이 많이 보였습니다.하지만 스타트업 특성상 많은 시간이 있지 않았기에 많은 부분에 손대지 못한 게 많이 아쉽습니다.그래도 빌드 후 배포된 앱을 보며 많은 보람을 느꼈습니다. 저를 프런트엔드 개발자로 많은 성장을 가져다준 프로젝트였습니다.",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.015)
                              ),
                            ),
                            Text(
                              "적용한 프레임워크 및 주요 패키지",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.016)
                              ),
                            ),
                            Text(
                                "·프론트엔드 프레임워크",
                                style: TextStyle(
                                    color:darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "NotoSansCJKKR",
                                    fontSize: mediaHeight(context, 0.015)
                                ),
                            ),
                            Container(
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
                                            fontSize: mediaHeight(context, 0.013)
                                        ),
                                        ),
                                      alignment: Alignment.center,
                                    ),
                                  ]
                              ),
                            ),
                            Text(
                              "·주요 패키지",
                              style: TextStyle(
                                  color:darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.015)
                              ),
                            ),
                            Container(
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
                                            fontSize: mediaHeight(context, 0.013)
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
                            Image.asset('assets/png/detail_01.png'),
                            Image.asset('assets/png/detail_02.png'),
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
