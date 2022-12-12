import 'package:flutter/material.dart';

import '../../utill/common.dart';

class PortfolioKaminavi extends StatelessWidget {
  const PortfolioKaminavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
=======
      padding: baseVerticalPadding(context).add(baseHorizontalPadding(context)*2),
>>>>>>> faf888fc635d49d49b1a32a80e969fa243150b39
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
<<<<<<< HEAD
                  Text('카미나비 앱은 일본 탈모회사 1위 기업인 Reve21과의 협업을 진행을 하였습니다. 두피 진단, 미션, 이벤트 뽑기를 통해 사용자들의 두피상태에 맞게 매일 바뀌는 미션을 수행함으로써 탈모를 치료 할 수 있게 앱 입니다. 개발에서는 프런트엔드 개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다.프런트 개발 중 30%를 직접 구현하였으며 일본회사와의 소통, UI, REST API 서버 통신, 배포, 유지보수등 많은 부분을 맡아 진행하였습니다.',style: CustomTextStyle.w400(context)),
=======
                  Text('카미나비앱은 일본 탈모 1위 회사인 Reve21과의 협업으로 만들어진 앱입니다. 앱 내에는 매일매일 달라는 미션, 미션 달성 후 뽑기 이벤트를 통해 쿠폰을 지급 해주는 앱입니다. 프런트 개발자 3명, 백엔드 개발자 2명으로 이루어진 팀이지만 프런트 개발자 2명이 퇴사하는 바람에 앱 출시까지 Flutter로 진행 하였습니다. 프론트 개발 중 40%를 직접 구현 하였으며 기존에 있던 코드들을 가독하기 편하게 교체하여 유지보수 등에서도 개발을 맡았습니다.',style: CustomTextStyle.w400(context)),
>>>>>>> faf888fc635d49d49b1a32a80e969fa243150b39
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
<<<<<<< HEAD
                  Text("* 개발 후 느낀점\n카미 나비 앱은 프런트 개발자 3명, 백엔드 개발자 2명이서 개발을 진행하였습니다. 하지만 프런트 개발자 2명이 프로젝트 중간에 그만두는 일이 생겨 혼자 개발하는 상황이었습니다. 2명의 개발자의 코드들이 스타일이 제각기이므로 이번 프로젝트를 통해 클린 코드, 코드 리뷰가 중요하다는 것을 깨달았습니다.",style: CustomTextStyle.w400(context))
=======
                  Text("* 개발 후 느낀점\n메인으로 큰 프로젝트였지만 주니어 개발자 2명이서 처음부터 끝까지 진행하다 보니 많이 아쉬움이 남는 프로젝트입니다. 개발하며 많은 경험과 스킬업을 진행하며 하나씩 보이는 개발 부채들이 많이 보였습니다.하지만 스타트업 특성상 많은 시간이 있지 않았기에 많은 부분에 손대지 못한 게 많이 아쉽습니다.그래도 빌드 후 배포된 앱을 보며 많은 보람을 느꼈으며 애정이 많이 묻어있는 앱입니다. 저를 프론트엔드 개발자로 많은 성장을 가져다준 프로젝트였습니다.",style: CustomTextStyle.w400(context))
>>>>>>> faf888fc635d49d49b1a32a80e969fa243150b39
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
