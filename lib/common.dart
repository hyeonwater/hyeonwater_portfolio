import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double mediaHeight(BuildContext context, double scale) => MediaQuery.of(context).size.height * scale;
double mediaWidth(BuildContext context, double scale) => MediaQuery.of(context).size.width * scale;

double basePadding(BuildContext context) => mediaWidth(context, 0.033);
EdgeInsets baseAllPadding(BuildContext context) => EdgeInsets.all(mediaWidth(context, 0.033));
EdgeInsets baseHorizontalPadding(BuildContext context) => EdgeInsets.symmetric(horizontal: mediaWidth(context, 0.033));
EdgeInsets baseVerticalPadding(BuildContext context) => EdgeInsets.symmetric(vertical: mediaWidth(context, 0.033));
BorderRadius baseBorderRadius = BorderRadius.circular(16);
