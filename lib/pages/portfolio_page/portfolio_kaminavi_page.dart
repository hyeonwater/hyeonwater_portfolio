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
                  Text('카미나비 앱은 일본 탈모회사 1위 기업인 Reve21과의 협업을 진행을 하였습니다. 두피 진단, 미션, 이벤트 뽑기를 통해 사용자들의 두피상태에 맞게 매일 바뀌는 미션을 수행함으로써 탈모를 치료 할 수 있게 할수있는 앱 입니다. 개발에서는 프런트엔드 개발 포지션을 맡아 Flutter를 이용하여 진행하였습니다.프런트 개발 중 30%를 직접 구현하였으며 일본회사와의 소통, UI 제작, REST API 서버 통신, 배포, 유지보수등 많은 부분을 맡아 진행하였습니다.',style: CustomTextStyle.w400(context)),
                  Container(
                    margin: baseVerticalPadding(context)/2,
                    child: Text('''* 개발환경 : AndroidStudio
* 개발 언어 / 프레임워크 : Dart / Flutter
* 프로젝트 기여도
    - 개발 전과정 참여
    - REST API 통신
    - UI 개발
''',style: CustomTextStyle.w400(context)),
                  ),

                  Text("* 개발 후 느낀점\n카미나비 앱은 프런트 개발자 3명, 백엔드 개발자 2명이서 개발을 진행하였습니다. 하지만 프런트 개발자 2명이 프로젝트 중간에 그만두는 일이 생겨 혼자 개발하는 상황이었습니다. 2명의 개발자의 코드들이 스타일이 제각기이므로 이번 프로젝트를 통해 클린 코드, 코드 리뷰가 중요하다는 것을 깨달았습니다.",style: CustomTextStyle.w400(context))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
