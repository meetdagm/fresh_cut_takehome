import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

class RootWrapper extends StatelessWidget {
  final Widget child;
  final String? title;
  final Widget? titleWidget;
  final Color backgroundColor;
  final bool isNavTransparent;
  final bool avoidSafeArea;
  final Widget? bottomNavigationBar;

  const RootWrapper({
    Key? key,
    required this.child,
    this.title,
    this.titleWidget,
    this.backgroundColor = BaseColors.black,
    this.isNavTransparent = false,
    this.avoidSafeArea = false,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      body: title != null
          ? NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  CupertinoSliverNavigationBar(
                    backgroundColor: isNavTransparent ? backgroundColor : null,
                    brightness: Brightness.dark,
                    largeTitle: titleWidget ?? Text(title!),
                  )
                ];
              },
              body: avoidSafeArea ? child : SafeArea(top: false, child: child),
            )
          : avoidSafeArea
              ? child
              : SafeArea(
                  child: child,
                ),
    );
  }
}
