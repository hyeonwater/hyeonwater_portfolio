import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../common.dart';

class DeskTopKaminaviCard extends StatelessWidget {
  const DeskTopKaminaviCard({Key? key,required this.darkMode}) : super(key: key);

  final bool darkMode;

  final List _frameWork = const[
    "Flutter v3.3.0",
    "Firebase",
    "RESTfulAPI",
  ];

  final List _packages = const[
    "get",
    "permission_handler",
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
                          Text('카미나비',style: TextStyle(
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
                            child: Text("카미나비 앱은 일본 탈모회사 1위 기업인 Reve21과의 협업을 진행을 하였습니다. 두피 진단, 미션, 이벤트 뽑기를 통해 사용자들의 두피상태에 맞게 매일 바뀌는 미션을 수행함으로써 탈모를 치료 할 수 있게 할수있는 앱 입니다. 개발에서는 앱개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다. Flutter개발 중 30%를 직접 구현하였으며 일본회사와의 소통, UI 제작, REST API 서버 통신, 배포, 유지보수등 많은 부분을 맡아 진행하였습니다.",style: TextStyle(
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
                              "2022년 07월 ~ 2022년 8월",
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
                              percent: 0.5,
                              barRadius: Radius.circular(30),
                              center: Text("50%",style: TextStyle(
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
                              "카미나비 앱은 Flutter 개발자 3명, 백엔드 개발자 2명이서 개발을 진행하였습니다. 하지만 Flutter 개발자 2명이 프로젝트 사정이 생겨 혼자 개발하는 상황이었습니다. 2명의 개발자의 코드들이 스타일이 제각기이므로 이번 프로젝트를 통해 클린 코드, 코드 리뷰의 중요성을 깨달았습니다.",
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
                              "적용한 트프레임워크 및 주요 패키지",
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
                              "· 프레임워크",
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
                          Image.asset('assets/png/kaminavi.png'),
                          Image.asset('assets/png/kaminavi_2.png'),
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
