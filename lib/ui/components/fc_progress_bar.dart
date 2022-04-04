import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

class FCProgressBar extends StatelessWidget {
  final double thickness;
  final Color backgroundColor;
  final Color primaryColor;
  final int completedSteps;
  final int totalSteps;

  const FCProgressBar({
    Key? key,
    this.thickness = 3,
    required this.backgroundColor,
    required this.primaryColor,
    required this.completedSteps,
    required this.totalSteps,
  }) : super(key: key);

  bool get _showProgressIndicatorIncompleteSteps {
    return completedSteps < totalSteps && completedSteps > 0;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: thickness,
      child: Stack(
        children: [
          Container(
            color: backgroundColor,
          ),
          Row(
            children: [
              Expanded(
                flex: completedSteps, //
                child: Stack(
                  // fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  alignment: Alignment.centerRight,
                  children: [
                    if (_showProgressIndicatorIncompleteSteps)
                      Container(
                        width: 12,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 10,
                              color: Colors.white,
                              offset: Offset(5, 0),
                            ),
                          ],
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            4,
                          ),
                        ),
                        gradient: LinearGradient(
                          tileMode: TileMode.mirror,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: const [
                            0.96,
                            1,
                          ],
                          colors: [
                            BaseColors.main,
                            _showProgressIndicatorIncompleteSteps
                                ? BaseColors.white
                                : BaseColors.main,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: totalSteps - completedSteps,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
