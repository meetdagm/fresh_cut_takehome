import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

typedef ViewModelCreatorFunction<S> = S Function();

const Widget horizontalSpaceTiny = SizedBox(width: 3.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);

const Widget verticalSpaceTiny = SizedBox(height: 2.0);
const Widget verticalSpaceSmall = SizedBox(height: 16.0);
const Widget verticalSpaceMedium = SizedBox(height: 32.0);
const Widget verticalSpaceLarge = SizedBox(height: 40.0);
const Widget verticalSpaceMassive = SizedBox(height: 120.0);

BorderRadius roundedBorderSmall = BorderRadius.circular(7);
BorderRadius roundedBorderMedium = BorderRadius.circular(15);
BorderRadius roundedBorderLarge = BorderRadius.circular(32);
BorderRadius roundedBorderExtraLarge = BorderRadius.circular(32);

const EdgeInsets horizontalMediumPadding = EdgeInsets.symmetric(horizontal: 15);

const EdgeInsets verticalMediumPadding = EdgeInsets.symmetric(vertical: 16);

const EdgeInsets wrappedMediumPadding =
    EdgeInsets.symmetric(horizontal: 16, vertical: 32);

Widget loadingSpinner = const Center(
  child: SizedBox(
    width: 24,
    height: 24,
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(BaseColors.main),
      strokeWidth: 3,
    ),
  ),
);

Widget spacedDivider = Column(
  children: const <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {double dividedBy = 1, double offsetBy = 0}) =>
    (screenHeight(context) - offsetBy) / dividedBy;

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0}) =>
    (screenWidth(context) - offsetBy) / dividedBy;

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);
