import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/shared/ui_helpers.dart';

class RadialGradientCard extends StatelessWidget {
  final Color primaryColor;
  final Widget child;
  const RadialGradientCard({
    Key? key,
    required this.primaryColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: roundedBorderLarge,
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.5,
          colors: [primaryColor.withOpacity(.2), primaryColor.withOpacity(0)],
        ),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: roundedBorderLarge,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [
              BaseColors.white.withOpacity(.08),
              BaseColors.white.withOpacity(.05),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
