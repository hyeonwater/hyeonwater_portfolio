import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/projects_cards/desktop_portfolio_card.dart';

import '../common.dart';
import '../projects_cards/desktop_bayabas_cards.dart';
import '../projects_cards/desktop_bayabs_renewal_card.dart';
import '../projects_cards/desktop_kaminavi_card.dart';
import '../projects_cards/portfoilo_card.dart';
import 'package:url_launcher/url_launcher.dart';

class DeskTopPage extends StatelessWidget {
  DeskTopPage({Key? key,required this.darkMode}) : super(key: key);
  final bool darkMode;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200,vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("@Flutter 개발자 김현수",
                          style: const TextStyle(
                              color:  const Color(0xff707070),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),
                      ),
                    ),
                    Container(
                      width: 503,
                      height: 671,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          child: Image.asset('assets/png/main.png',fit: BoxFit.cover,)),
                    ),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 50),
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
                            "안녕하세요. Flutter 개발자 김현수입니다.\n\n대학교에서 Java를 이용해 Android 수업 통해 앱개발을 처음 접했습니다. 앱 개발에 흥미를 얻던 중 Flutter를 알게되었습니다. 한 코드로 여러 플랫폼을 만들 수 있다는 것이 흥미로워 접하게 되었습니다.",
                            style: TextStyle(
                                color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontSize: 20,
                                height: 1.5
                            ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(bottom: 30),
                          child: Text(
                            "스타트업에서 Flutter를 이용하여 앱 출시까지 경험이 있습니다. 주로 클라이언트 앱 개발을 맡아 진행하였지만 작은 규모의 스타트업 특성상 기획 및 디자인, 개발 분야에서는 앱 개발을 진행하였습니다. 또한 개발된 앱을 가지고 독일 iENA 전시회에서 동상 수상까지 경험이 있습니다.",
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
                          "앱 개발자로서 남들이 이해하기 쉬운 코드가 잘 짠 코드라 생각해 클린 코드 작성, 코드 재활용에 대하여 항상 고민하고 적용하려고 하고 있습니다. 그리고 만족스러운 결과가 눈에 보일 때까지 계속 매달리는 끈기 또한 자신 있습니다.",
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
                              Uri.parse('tel: +082 10 9787 6617')
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: Column(
                                children: [
                                  FaIcon(FontAwesomeIcons.github,color:darkMode ? Color(0xffFFFFFF) :Colors.black,size: 40,),
                                  Text(
                                    "GitHub.",
                                    style: TextStyle(
                                        color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "NotoSansCJKKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 20
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: (){
                                launchUrl(
                                  Uri.parse("https://github.com/hyeonwater")
                                );
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: Column(
                                children: [
                                  Image.asset('assets/png/Notion_app_logo.png',scale: 12,),
                                  Text(
                                    "Notion.",
                                    style: TextStyle(
                                        color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "NotoSansCJKKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 20
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: (){
                                launchUrl(
                                    Uri.parse("https://rough-text-cc0.notion.site/274d6025ec6d4327a87f1a4a9881bf2d")
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 80,bottom: 20),
                    child: Text("Career",
                      style: TextStyle(
                          color:  Color(0xff2a6ecb),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSansCJKKR",
                          fontSize:25
                      ),
                    ),
                  ),
                  Row(
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
                    "일본 1위 탈모 개선 클리닉 회사와 협업을 진행하는 습관 개선 탈모 예방 서비스 플랫폼 스타트업으로 앱개발 포지션을 맡아서 진행하였습니다. ",
                    style: TextStyle(
                        color:  darkMode ? Color(0xffFFFFFF) : Color(0xff2c2c2c),
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle:  FontStyle.normal,
                        fontSize: 20
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 35),
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
                  crossAxisCount: 2,
                  children: [
                    CupertinoButton(
                      child: Image.asset('assets/png/project_01.png'),
                      onPressed: () =>Get.dialog(DeskTopBayaBasCard(darkMode: darkMode)),
                    ),
                    CupertinoButton(
                      child: Image.asset('assets/png/project_02.png'),
                      onPressed: ()=> Get.dialog(DeskTopKaminaviCard(darkMode: darkMode,)),),
                    CupertinoButton(
                      child: Image.asset('assets/png/portfolio.png'),
                      onPressed: ()=> Get.dialog(DeskTopPortfolioCard(darkMode: darkMode,)),),
                    CupertinoButton(
                      child: Image.asset('assets/png/bayabas_renewal.png'),
                      onPressed: ()=> Get.dialog(DeskTopBayaBasRenewalCard(darkMode: darkMode,)),),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
