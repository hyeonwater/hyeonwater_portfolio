import 'package:flutter/cupertino.dart';

///미디어 쿼리 height, width
double mediaHeight(BuildContext context, double scale) => MediaQuery.of(context).size.height * scale;
double mediaWidth(BuildContext context, double scale) => MediaQuery.of(context).size.width * scale;

///앱 메인 패딩 밸류
double basePadding(BuildContext context) => mediaWidth(context, 0.033);
EdgeInsets baseAllPadding(BuildContext context) => EdgeInsets.all(mediaWidth(context, 0.033));
EdgeInsets baseHorizontalPadding(BuildContext context) => EdgeInsets.symmetric(horizontal: mediaWidth(context, 0.033));
EdgeInsets baseVerticalPadding(BuildContext context) => EdgeInsets.symmetric(vertical: mediaWidth(context, 0.033));
BorderRadius baseBorderRadius = BorderRadius.circular(16);