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
          Text('소프트웨어 개발자로서 클린 코드가 중요하다고 생각합니다. 개발자 개개인의 코드 스타일은 다 다르다고 생각합니다. 클린 코드를 통해 상대방이 저의 코드를 보기 편하고 또한 내가 한 코드를 유지 보수를 하기 용이하다고 생각하기 때문입니다.', style: CustomTextStyle.w400(context))
        ],
      ),
    );
  }
}
