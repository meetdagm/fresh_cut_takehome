import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

class Glassmorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final double radius;
  final Widget child;
  final bool enableBorder;
  final Color backgroundColor;

  const Glassmorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.radius,
    required this.child,
    this.backgroundColor = BaseColors.white,
    this.enableBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(opacity),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            border: !enableBorder ? null : Border.all(
              width: 1,
              color: backgroundColor.withOpacity(.1),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
