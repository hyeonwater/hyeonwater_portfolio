import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/projects_cards/bayabas_cards.dart';
import 'package:my_portfolio/projects_cards/kaminavi_card.dart';
import 'package:my_portfolio/projects_cards/portfoilo_card.dart';

import '../common.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: baseAllPadding(context).add(baseHorizontalPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: CupertinoSwitch(
                      activeColor: Colors.grey,
                      value: darkMode,
                      onChanged: (value){
                        darkMode = value;
                        setState(() {
                          darkMode != false;
                          Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                        });
                      },
                    ),
                  ),
                  Text(darkMode ? 'Dark mode' : 'Light mode'),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: mediaHeight(context,0.6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(39),
                          ),
                    ),
                      child: Image.asset('assets/png/main.png'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:EdgeInsets.only(bottom: mediaHeight(context, 0.02)),
                          child: Text("Introduce",
                              style: TextStyle(
                                  color:  Color(0xff2a6ecb),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.026)
                              ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(bottom: mediaHeight(context, 0.03)),
                          child: Text(
                              "안녕하세요. Flutter 개발자 김현수입니다.스타트업에서 앱 서비스를 개발 및 배포, 운영을 해본 경험이 있습니다.주로 프론트 개발을 맡아 진행하였지만 작은 규모의 스타트업 특성상기획 및 디자인, 개발파트에서는 앱 개발을 경험해볼 수 있었습니다. 또한, 작은 규모에 팀에서 투자를 유치 받으며 직원이 10명 이상으로성장했던 경험이 있습니다.",
                              style: TextStyle(
                                  color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansCJKKR",
                                  fontSize: mediaHeight(context, 0.021)
                              ),
                          ),
                        ),
                        Text(
                          "소프트웨어 개발자로서 클린 코드가 중요하다고 생각합니다.개발자 개개인의 코드 스타일은 다 다르다고 생각합니다. 클린 코드를 통해 상대방이 저의 코드를 보기 편하고 또한 내가 한 코드를 유지 보수하기 용이하다고 생각하기 때문입니다.",
                          style: TextStyle(
                              color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontSize: mediaHeight(context, 0.021)
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: mediaHeight(context, 0.02)),
                          child: Text("Contact",
                            style: TextStyle(
                                color:  Color(0xff2a6ecb),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: mediaHeight(context, 0.026)
                            ),
                          ),
                        ),
                        Text(
                            "Email.  hs97kim@gmail.com",
                            style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: mediaHeight(context, 0.021)
                            ),
                        ),
                        Text(
                            "Phone. 010-9787-6617",
                            style: TextStyle(
                                color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: mediaHeight(context, 0.021)
                            ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: mediaHeight(context, 0.02)),
                          child: Text("Channel",
                            style: TextStyle(
                                color:  Color(0xff2a6ecb),
                                fontWeight: FontWeight.w700,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: mediaHeight(context, 0.026)
                            ),
                          ),
                        ),
                        Text(
                          "GitHub. https://github.com/hyeonwater",
                          style: TextStyle(
                              color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: mediaHeight(context, 0.021)
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin:EdgeInsets.only(top: mediaHeight(context, 0.02)),
                child: Text("Career",
                  style: TextStyle(
                      color:  Color(0xff2a6ecb),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontSize: mediaHeight(context, 0.026)
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                      "뉴로서킷",
                      style: TextStyle(
                          color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle:  FontStyle.normal,
                          fontSize: mediaHeight(context, 0.024)
                      ),
                  ),
                  Text(
                      "Flutter Development Team",
                      style: TextStyle(
                          color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansCJKKR",
                          fontStyle:  FontStyle.normal,
                          fontSize: mediaHeight(context, 0.019)
                      ),
                  ),
                ],
              ),
              Text(
                "2022.03 ~ 현재",
                style: TextStyle(
                    color:  const Color(0xff747474),
                    fontWeight: FontWeight.w400,
                    fontFamily: "NotoSansCJKKR",
                    fontStyle:  FontStyle.normal,
                    fontSize: mediaHeight(context, 0.019)
                ),
              ),
              Text(
                "일본 1위 탈모 개선 클리닉 회사와 협업을 진행하는 습관 개선 탈모 예방 서비스 플랫폼 스타트업으로 프론트엔드 포지션을 맡아서 진행하였습니다. ",
                style: TextStyle(
                    color: darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                    fontWeight: FontWeight.w400,
                    fontFamily: "NotoSansCJKKR",
                    fontStyle:  FontStyle.normal,
                    fontSize: mediaHeight(context, 0.021)
                ),
              ),
              Container(
                margin:EdgeInsets.only(top: mediaHeight(context, 0.02)),
                child: Text("Projects",
                  style: TextStyle(
                      color:  Color(0xff2a6ecb),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontSize: mediaHeight(context, 0.026)
                  ),
                ),
              ),
          Container(
            padding: baseHorizontalPadding(context)*2,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                CupertinoButton(
                    child: Image.asset('assets/png/project_01.png'),
                  onPressed: () =>Get.dialog(BayaBasCard(darkMode:darkMode)),
                ),
                CupertinoButton(
                    child: Image.asset('assets/png/project_02.png'),
                onPressed: ()=> Get.dialog(KaminaviCard()),),
                PortFoilioCard(),
              ]
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
