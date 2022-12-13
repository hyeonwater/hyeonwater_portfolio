import 'package:flutter/material.dart';
import 'package:my_portfolio/utill/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_validator/email_validator.dart';

class AboutPageBody extends StatelessWidget {
  const AboutPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaWidth(context, 0.6),
      padding: baseAllPadding(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Introduce',style: TextStyle(fontSize: 35),),
          Container(
            margin: baseVerticalPadding(context)/2,
            child: Divider(
              thickness: mediaHeight(context, 0.005),),
          ),
          Text('김현수 | HyeonSoo Kim',style: CustomTextStyle.w600(context,scale: 0.025),),
          SizedBox(
            height: mediaHeight(context, 0.02),
          ),
          Text('1997.04.28 | 경기도 고양시',style: CustomTextStyle.w500(context,scale: 0.02),),
          CupertinoButton(
            padding: EdgeInsets.zero,
              child: Row(
                children: [
                  Icon(Icons.email_outlined,color: Colors.black,size: mediaHeight(context, 0.02),),
                  Text('  hs97kim@gmail.com',style: CustomTextStyle.w500(context,scale: 0.02),)
                ],
              ),
              onPressed: (){
             openURL(url: 'hs97kim@gmail.com');
              }
          ),
          CupertinoButton(
              padding: EdgeInsets.zero,
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.github,color: Colors.black,size: mediaHeight(context, 0.02),),
                  Text('  https://github.com/hyeonwater',style: CustomTextStyle.w500(context,scale: 0.02),)
                ],
              ),
              onPressed: (){
                openURL(url: 'https://github.com/hyeonwater');
              }
          ),
          SizedBox(
            height: mediaHeight(context, 0.02),
          ),
          Text('스타트업에서 앱 서비스를 개발 및 배포, 운영을 해본 경험이 있습니다. 주로 프론트 개발을 맡아 진행하였지만 작은 규모의 스타트업 특성상 기획 및 디자인, 개발파트에서는 앱 개발을 경험해볼 수 있었습니다. 또한, 작은 규모에 팀에서 투자를 유치 받으며 직원이 10명 이상으로 성장했던 경험이 있습니다.',
            style: CustomTextStyle.w400(context),),
          SizedBox(
            height: mediaHeight(context, 0.05),
          ),
          Text('소프트웨어 개발자로서 클린 코드가 중요하다고 생각합니다. 개발자 개개인의 코드 스타일은 다 다르다고 생각합니다. 클린 코드를 통해 상대방이 저의 코드를 보기 편하고 또한 내가 한 코드를 유지 보수를 하기 용이하다고 생각하기 때문입니다.', style: CustomTextStyle.w400(context)),
          Container(
            margin: EdgeInsets.only(top: mediaHeight(context, 0.02)),
              child: Text('Work Experience',style: TextStyle(fontSize: 35),)),
          Container(
            margin: baseVerticalPadding(context)/2,
            child: Divider(
              thickness: mediaHeight(context, 0.005),),
          ),
          Text('뉴로서킷 : 2022.03 ~ (현재)',style: CustomTextStyle.w600(context,scale: 0.025),),
          Row(
            children: [
              Expanded(
                flex: 3,
                child : Container(
                  margin: baseVerticalPadding(context)/2,
                  child: Text('바야바즈 앱 (2022.05 ~ 2022.07)',style: CustomTextStyle.w500(context,scale: 0.02))),),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    CupertinoButton(
                        child: FaIcon(FontAwesomeIcons.android,color: Colors.black,size: mediaHeight(context, 0.02),),
                    onPressed: (){
                          openURL(url: 'https://play.google.com/store/apps/details?id=com.neurocircuit.bayabas.flutter');
                    }
                    ),
                    CupertinoButton(
                        child: FaIcon(FontAwesomeIcons.apple,color: Colors.black,size: mediaHeight(context, 0.02),),
                        onPressed: (){
                          openURL(url: 'https://apps.apple.com/kr/app/%EB%B0%94%EC%95%BC%EB%B0%94%EC%A6%88/id1631768678');
                        }
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text('뉴로서킷의 메인 프로젝트.',style: CustomTextStyle.w400(context),),
          Text('바야바즈 메인 앱으로 습관을 개선하여 탈모를 예방한다는 목표를 가지고 만들어진 앱으로 습관 관리 개선 및 나의 두피 진단 등 콘텐츠를 이용할 수 있으며 그로 인해 얻어지는 화폐 개념의 구아바를 이용하여 제품 및 여러 콘텐츠를 즐길 수 있는 앱 입니다.',style: CustomTextStyle.w400(context),),
          SizedBox(
            height: mediaHeight(context, 0.02),
          ),
          Text('- 앱 기획부터 런칭까지 진행',style: CustomTextStyle.w400(context)),
          Text('- 백엔드 개발자분들과의 Rest API 사용',style: CustomTextStyle.w400(context),),
          Text('- Adobe XD를 활용하여 디자이너분과의 협업',style: CustomTextStyle.w400(context)),
          Container(
              margin: baseVerticalPadding(context)/2,
              child: Text('카미나비 (2022.03 ~ 2022.05)',style: CustomTextStyle.w500(context,scale: 0.02))),
          Text('카미나비 앱은 일본 탈모회사 1위 기업인 Reve21과의 협업을 진행을 하였습니다. 진단, 미션, 이벤트 뽑기를 통해 사용자들의 두피상태에 맞게 매일 바뀌는 미션을 함으로 탈모치료를 할 수 있는 앱 입니다.',style: CustomTextStyle.w400(context),),
          SizedBox(
            height: mediaHeight(context, 0.02),
          ),
          Text('- 일본 출시 목적으로 다국어 기반으로 앱을 개발 하였고 런칭까지 진행',style: CustomTextStyle.w400(context)),
          Text('- 백엔드 개발자분들과의 Rest API 사용',style: CustomTextStyle.w400(context),),
        ],
      ),
    );
  }
}
