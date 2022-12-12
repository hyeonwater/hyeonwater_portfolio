import 'package:flutter/material.dart';

import '../../utill/common.dart';

class PortfolioKaminavi extends StatelessWidget {
  const PortfolioKaminavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: baseVerticalPadding(context).add(baseHorizontalPadding(context)*2),
      width: mediaWidth(context, 1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/png/bayabas.png',height: mediaHeight(context, 0.5),),
            Container(
              padding: baseAllPadding(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: baseVerticalPadding(context)/2,
                    child: Text('''* 개발환경 : AndroidStudio
* 개발 언어 / 프레임워크 : Dart / Flutter
* 프로젝트 기여도
    - 기획 및 디자인, 개발 전과정 참여
    - 카카오 로그인 (Kakao SDK)
    - 앱 푸쉬기능 구현 ( Firebase )
    - 위치 정보에 따른 날씨 (geolocator)
    - 상세 주소 확인 (kpostal)
    - REST API 통신
    - 제품 및 주문 기능 구현
''',style: CustomTextStyle.w400(context)),
                  ),

                  Text("* 개발 후 느낀점\n메인으로 큰 프로젝트였지만 주니어 개발자 2명이서 처음부터 끝까지 진행하다 보니 많이 아쉬움이 남는 프로젝트입니다. 개발하며 많은 경험과 스킬업을 진행하며 하나씩 보이는 개발 부채들이 많이 보였습니다.하지만 스타트업 특성상 많은 시간이 있지 않았기에 많은 부분에 손대지 못한 게 많이 아쉽습니다.그래도 빌드 후 배포된 앱을 보며 많은 보람을 느꼈으며 애정이 많이 묻어있는 앱입니다. 저를 프론트엔드 개발자로 많은 성장을 가져다준 프로젝트였습니다.",style: CustomTextStyle.w400(context))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
