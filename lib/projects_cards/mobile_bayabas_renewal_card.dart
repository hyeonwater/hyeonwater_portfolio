import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MobileBayaBasRenewalCard extends StatelessWidget {
  const MobileBayaBasRenewalCard({Key? key,required this.darkMode}) : super(key: key);

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
                    fontSize: 36
                ),),
                onPressed: () => Get.back()),
            Container(
              padding: baseAllPadding(context),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/png/bayabas_renewal_1.png',),
                        Image.asset('assets/png/bayabas_renewal_2.png',),
                      ],
                    ),
                  ),
                  Container(
                    padding: baseHorizontalPadding(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('바야바즈 리뉴얼',style: TextStyle(
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
                          child: Text("기존에 출시하였던 바야바즈를 리뉴얼 작업을 진행했습니다. 리뉴얼 작업에서는 디자인, API, 기획도 바뀌는 상황이어서 앱을 새로 만드는 작업하는 상황이었습니다. 프런트 개발자 1명, 백엔드 개발자 1명으로 이루어진 팀에서 앱개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다. 프런트 개발 중 100%를 직접 구현하였으며 UI, RESTFul API 서버 통신, 배포, 유지보수 등 많은 부분을 맡아 진행하였습니다.",style: TextStyle(
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
                            "2022년 01월 ~ 2022년 2월",
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
                          margin: EdgeInsets.only(right: 100,bottom: 15),
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
                            "바야바즈 리뉴얼 전 바야바즈는 기획자 없이 개발자들이 기획한 후 디자인까지 참여했었습니다. 그래서 앱을 만들었는데도 완벽하다는 느낌이 없었습니다. 하지만 이번 바야바즈 리뉴얼은 기획자, 디자이너가 계신 상태에서 작업을 하다 보니 제대로 된 앱을 만드는 느낌이 들어 기존 바야바즈를 개발할 때보다 재미있게 개발을 했던 거 같습니다.",
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
                          child: GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 5,
                              childAspectRatio: 4/1,
                              children: [
                                for(int i = 0; i < _frameWork.length; i++)
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)
                                        ),
                                        color: Color(0xffF2F3F7)
                                    ),
                                    child: Text("${_frameWork[i]}", style:
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
                              crossAxisCount: 4,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              childAspectRatio: 4/1,
                              children: [
                                for(int i = 0; i < _packages.length; i++)
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
