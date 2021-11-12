import 'package:flutter/cupertino.dart';

const Widget horizontalSpaceTiny = SizedBox(width: 5.0,);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0,);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0,);

const Widget verticalSpaceTiny = SizedBox(width: 5.0,);
const Widget verticalSpaceSmall = SizedBox(width: 10.0,);
const Widget verticalSpaceMedium = SizedBox(width: 25.0,);
const Widget verticalSpaceLarge = SizedBox(width: 50.0,);
const Widget verticalSpaceMassive = SizedBox(width: 120.0,);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidthPercent(BuildContext context, {double multipleBy = 1}) => (screenWidth(context) * multipleBy);
double screenHeightPercent(BuildContext context, {double multipleBy = 1}) => (screenHeight(context) * multipleBy);