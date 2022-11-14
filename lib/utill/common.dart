import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

double mediaHeight(BuildContext context, double scale) => MediaQuery.of(context).size.height * scale;
double mediaWidth(BuildContext context, double scale) => MediaQuery.of(context).size.width * scale;

double basePadding(BuildContext context) => mediaWidth(context, 0.033);
EdgeInsets baseAllPadding(BuildContext context) => EdgeInsets.all(mediaWidth(context, 0.033));
EdgeInsets baseHorizontalPadding(BuildContext context) => EdgeInsets.symmetric(horizontal: mediaWidth(context, 0.033));
EdgeInsets baseVerticalPadding(BuildContext context) => EdgeInsets.symmetric(vertical: mediaWidth(context, 0.033));
BorderRadius baseBorderRadius = BorderRadius.circular(16);


mixin CustomColors implements Color{
  static const Color background = Color(0xFFEDF2F5);
  static const Color main = Color(0xFF27C672);
  static const Color mainEmpty = Color(0xFFEAFFE6);
  static const Color hint = Color(0xFFB6B6B6);
  static const Color empty = Color(0xFFFBFBFB);
  static const Color emptySide = Color(0xFFE2ECF2);
  static const Color back = Color(0xFF7695BA);
}

mixin CustomTextStyle implements TextStyle{
  static const double _scale = 0.018;
  static const Color _color = Colors.black;
  static const String _family = 'Tmoney';
  static const TextDecoration _decoration = TextDecoration.none;

  static TextStyle appBarStyle(BuildContext context, {double? scale, Color? color}) => TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: mediaHeight(context, scale ?? 0.022),
      color: color ?? _color,
      fontFamily: _family
  );
  static TextStyle w100(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w200(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w300(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w400(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w500(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w600(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w700(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w800(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
  static TextStyle w900(BuildContext context, {double? scale, double? height, Color? color, String? fontFamily, TextDecoration? decoration}) => TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: mediaHeight(context, scale ?? _scale),
      color: color ?? _color,
      height: height,
      fontFamily: fontFamily ?? _family,
      decoration: decoration ?? _decoration
  );
}

Future openURL({required String url, bool? inApp}) async{
  launch(
      url,
      forceSafariVC: inApp,
      forceWebView: inApp ?? false,
      enableJavaScript: true
  );
}
