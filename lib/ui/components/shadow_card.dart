import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

class ShadowCard extends StatelessWidget {
  final Widget child;
  final Color primaryColor;
  const ShadowCard({Key? key, required this.child, required this.primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(.2),
            blurRadius: 32.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: const Offset(
              -8.0, // Move to right -4  horizontally
              -8.0, // Move to bottom -4 Vertically
            ),
          ),
          const BoxShadow(
            color: BaseColors.black,
            blurRadius: 32.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              8.0, // Move to right 4  horizontally
              8.0, // Move to bottom 4 Vertically
            ),
          ),
        ],
      ),
      child: child,
    );
  }
}
