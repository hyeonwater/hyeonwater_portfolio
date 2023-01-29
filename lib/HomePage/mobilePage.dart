import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common.dart';
import '../projects_cards/desktop_bayabas_cards.dart';
import '../projects_cards/desktop_kaminavi_card.dart';
import '../projects_cards/mobile_bayabas_card.dart';
import '../projects_cards/mobile_kaminavi_card.dart';
import '../projects_cards/mobile_portfolio_card.dart';
import '../projects_cards/portfoilo_card.dart';
import 'package:url_launcher/url_launcher.dart';


class MobilePage extends StatelessWidget {
  const MobilePage({Key? key,required this.darkMode}) : super(key: key);
  final bool darkMode;
  @override
    Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
          padding: baseAllPadding(context).add(baseHorizontalPadding(context)*3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("@Flutter 개발자 김현수",
                        style: const TextStyle(
                            color:  const Color(0xff707070),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle:  FontStyle.normal,
                            fontSize: 15.0
                        ),
                      ),
                      Container(
                        width: 503,
                        height: 500,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: Image.asset('assets/png/main.png',fit: BoxFit.cover,)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:EdgeInsets.only(bottom: 20),
                          child: Text("Introduce",
                            style: TextStyle(
                                color:  Color(0xff2a6ecb),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 25
                            ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(bottom: 30),
                          child: Text(
                            "안녕하세요. Flutter 개발자 김현수입니다.스타트업에서 앱 서비스를 개발 및 배포, 운영을 해본 경험이 있습니다.주로 프론트 개발을 맡아 진행하였지만 작은 규모의 스타트업 특성상기획 및 디자인, 개발파트에서는 앱 개발을 경험해볼 수 있었습니다. 또한, 작은 규모에 팀에서 투자를 유치 받으며 직원이 10명 이상으로성장했던 경험이 있습니다.",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 20,
                                height: 1.5
                            ),
                          ),
                        ),
                        Text(
                          "소프트웨어 개발자로서 클린 코드가 중요하다고 생각합니다.개발자 개개인의 코드 스타일은 다 다르다고 생각합니다. 클린 코드를 통해 상대방이 저의 코드를 보기 편하고 또한 내가 한 코드를 유지 보수하기 용이하다고 생각하기 때문입니다.",
                          style: TextStyle(
                              color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontSize: 20,
                              height: 1.5
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 20,bottom: 20),
                          child: Text("Contact",
                            style: TextStyle(
                                color:  Color(0xff2a6ecb),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 25
                            ),
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "Email.  hs97kim@gmail.com",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 20
                            ),
                          ),
                          onPressed: (){
                            launchUrl(
                                Uri.parse('mailto:hs97kim@gmail.com')
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "Phone. 010-9787-6617",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 20
                            ),
                          ),
                          onPressed: (){
                            launchUrl(
                                Uri.parse('tel: 010 9787 6617')
                            );
                          },
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 20,bottom: 20),
                          child: Text("Channel",
                            style: TextStyle(
                                color:  Color(0xff2a6ecb),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 25
                            ),
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "GitHub. https://github.com/hyeonwater",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 20
                            ),
                          ),
                          onPressed: (){
                            launchUrl(
                                Uri.parse("https://github.com/hyeonwater")
                            );
                          },
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "Notion. https://rough-text-cc0.notion.site/274d6025ec6d4327a87f1a4a9881bf2d",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 20
                            ),
                          ),
                          onPressed: (){
                            launchUrl(
                                Uri.parse("https://rough-text-cc0.notion.site/274d6025ec6d4327a87f1a4a9881bf2d")
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:EdgeInsets.only(top: 20,bottom: 20),
                      child: Text("Career",
                        style: TextStyle(
                            color:  Color(0xff2a6ecb),
                            fontWeight: FontWeight.w700,
                            fontFamily: "NotoSansCJKKR",
                            fontSize:25
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "뉴로서킷",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 23
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Flutter Development Team",
                          style: TextStyle(
                              color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 18
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "2022.03 ~ 현재",
                        style: TextStyle(
                            color:  const Color(0xff747474),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle:  FontStyle.normal,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Text(
                      "일본 1위 탈모 개선 클리닉 회사와 협업을 진행하는 습관 개선 탈모 예방 서비스 플랫폼 스타트업으로 프론트엔드 포지션을 맡아서 진행하였습니다. ",
                      style: TextStyle(
                          color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                          fontWeight: FontWeight.w400,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle:  FontStyle.normal,
                          fontSize: 20
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top: mediaHeight(context, 0.02)),
                      child: Text("Projects",
                        style: TextStyle(
                            color:  Color(0xff2a6ecb),
                            fontWeight: FontWeight.w700,
                            fontFamily: "NotoSansCJKKR",
                            fontSize: 25
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: baseHorizontalPadding(context)*2,
                child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    children: [
                      CupertinoButton(
                        child: Image.asset('assets/png/project_01.png'),
                        onPressed: () =>Get.dialog(MobileBayaBasCard(darkMode: darkMode)),
                      ),
                      CupertinoButton(
                        child: Image.asset('assets/png/project_02.png'),
                        onPressed: ()=> Get.dialog(MobilekaminaviCard(darkMode: darkMode,)),),
                      CupertinoButton(
                        child: Image.asset('assets/png/portfolio.png'),
                        onPressed: ()=> Get.dialog(MobilePortFolioCard(darkMode: darkMode,)),),
                    ]
                ),
              )
            ],
          ),
        ),
      );
    }
}
