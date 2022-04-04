import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/components/fc_progress_bar.dart';
import 'package:fresh_cut_dagmawi/ui/components/tint_gradient_border_card.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/shared/ui_helpers.dart';

import 'glass_morphism.dart';
import 'radial_gradient_card.dart';
import 'shadow_card.dart';

class GradientCard extends StatelessWidget {
  final Color primaryColor;
  final String assetURL;
  final String title;
  final String subTitle;
  final int completedSteps;
  final int totalSteps;

  const GradientCard({
    Key? key,
    required this.assetURL,
    required this.primaryColor,
    required this.title,
    required this.subTitle,
    required this.completedSteps,
    required this.totalSteps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      primaryColor: primaryColor,
      child: TintGradientBorderCard(
        primaryColor: primaryColor,
        child: RadialGradientCard(
          primaryColor: primaryColor,
          child: Glassmorphism(
            blur: 32,
            opacity: .01,
            radius: 32.0,
            child: SizedBox(
              height: screenHeightFraction(
                context,
                dividedBy: 2,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              assetURL,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title,
                                      style: BaseFonts.h1(),
                                    ),
                                    verticalSpaceTiny,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          subTitle,
                                          style: BaseFonts.subTitle(
                                            color: BaseColors.main,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.eye,
                                              color: completedSteps == 0
                                                  ? BaseColors.main
                                                  : BaseColors.grey,
                                              size: 12,
                                            ),
                                            horizontalSpaceTiny,
                                            Text(
                                              "$completedSteps/$totalSteps",
                                              style: BaseFonts.subTitle(
                                                color: completedSteps == 0
                                                    ? BaseColors.main
                                                    : BaseColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                FCProgressBar(
                                  backgroundColor:
                                      BaseColors.white.withOpacity(.1),
                                  primaryColor: primaryColor,
                                  completedSteps: completedSteps,
                                  totalSteps: totalSteps,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          top: 12,
                        ),
                        child: Container(
                          width: double.infinity,
                          height:
                              screenHeightFraction(context, dividedBy: 8 / 3),
                          color: Colors.transparent,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 32,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          height: 64,
                          width: 64,
                          child: Glassmorphism(
                            enableBorder: true,
                            blur: 7,
                            opacity: .2,
                            radius: 32,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // color: Colors.red,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: BaseColors.white.withOpacity(.6),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.play_arrow,
                                  size: 42,
                                  color: BaseColors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
