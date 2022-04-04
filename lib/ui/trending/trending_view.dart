import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/helpers/ui_constants.dart';
import 'package:fresh_cut_dagmawi/ui/components/gradient_text.dart';
import 'package:fresh_cut_dagmawi/ui/components/root_wrapper.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/shared/ui_helpers.dart';
import 'package:fresh_cut_dagmawi/ui/trending/end_page.dart';
import 'package:fresh_cut_dagmawi/ui/trending/trending_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TrendingView extends StatelessWidget {
  const TrendingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrendingViewModel>.reactive(
      viewModelBuilder: () => TrendingViewModel(),
      builder: (vmContext, viewModel, vmChild) {
        return RootWrapper(
          isNavTransparent: true,
          // backgroundColor: Colors.green.withOpacity(.2),
          avoidSafeArea: true,
          title: kd_trending_title,
          titleWidget: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              GradientText(
                kd_trending_title,
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.red,
                  ],
                ),
              ),
              Text(kd_trending_fire_emoji),
            ],
          ),
          child: ListView(
            shrinkWrap: true,
            primary: true,
            padding: EdgeInsets.zero,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.count,
                padding: wrappedMediumPadding,
                separatorBuilder: (context, index) => verticalSpaceMedium,
                itemBuilder: (builderContext, index) {
                  return viewModel.getCardForItemAt(index: index);
                },
              ),
              const EndPage(),
            ],
          ),
        );
      },
    );
  }
}
