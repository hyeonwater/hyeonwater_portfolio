import 'package:flutter/material.dart';

import '../../utill/common.dart';

class PortfolioBayabas extends StatelessWidget {
  const PortfolioBayabas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Text('바야바즈 메인 앱으로 습관을 개선하여 탈모를 예방한다는 목표를 가지고 만들어진 앱으로 습관 관리 개선 및 나의 두피 진단 등 콘텐츠를 이용할 수 있으며 그로 인해 얻어지는 화폐 개념의 구아바를 이용하여 제품 및 여러 콘텐츠를 즐길 수 있는 앱 입니다.프런트 개발자 2명, 백엔드 개발자 2명으로 이루어진 팀에서 프론트엔드 개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다.프론트 개발 중 50%를 직접 구현하였으며 REST API 서버 통신, 배포, 유지보수등 많은 부분을 맡아 진행하였습니다. 또한 메인 콘텐츠로 개발된 진단부분의 경우 기획을 직접 하였으며, 디자인 작업에 참여 하였습니다.',style: CustomTextStyle.w400(context)),
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
