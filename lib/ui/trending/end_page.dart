import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/helpers/asset_constants.dart';
import 'package:fresh_cut_dagmawi/ui/components/gradient_border.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/shared/ui_helpers.dart';

class EndPage extends StatelessWidget {
  const EndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalMediumPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage(endPageBanner),
          ),
          Text(
            "Check back soon for new clips and creator content.",
            style: BaseFonts.title(color: BaseColors.white),
            textAlign: TextAlign.center,
          ),
          verticalSpaceSmall,
          Text(
            "In the meantime join our discord.",
            style: BaseFonts.subTitle(color: BaseColors.grey),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          GradientBorderContainer(
            strokeWidth: .5,
            radius: 56,
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                BaseColors.main,
                BaseColors.brown,
              ],
            ),
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    56,
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    BaseColors.main.withOpacity(.5),
                    BaseColors.main.withOpacity(0),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    width: 22,
                    height: 22,
                    image: AssetImage(discord),
                  ),
                  horizontalSpaceSmall,
                  Text(
                    "Join Metaview Discord",
                    style: BaseFonts.h2(color: BaseColors.white),
                  ),
                ],
              ),
            ),
          ),
          verticalSpaceMassive,
        ],
      ),
    );
  }
}
