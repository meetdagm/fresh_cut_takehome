import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/shared/ui_helpers.dart';

class TintGradientBorderCard extends StatelessWidget {
  final Widget child;
  final Color primaryColor;

  const TintGradientBorderCard({
    Key? key,
    required this.child,
    required this.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: roundedBorderExtraLarge,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: const [
            .2,
            .4,
          ],
          colors: [
            primaryColor.withOpacity(.2),
            BaseColors.black,
          ],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: roundedBorderLarge,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              .1,
              .5,
            ],
            colors: [
              BaseColors.white.withOpacity(.2),
              BaseColors.black2.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: roundedBorderLarge,
              color: BaseColors.black,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
