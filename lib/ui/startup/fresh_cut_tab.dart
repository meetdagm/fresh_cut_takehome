import 'package:flutter/material.dart';
import 'package:fresh_cut_dagmawi/ui/components/glass_morphism.dart';
import 'package:fresh_cut_dagmawi/ui/components/root_wrapper.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/startup/fresh_cut_tab_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FreshCutTab extends StatelessWidget {
  const FreshCutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FreshCutTabViewModel>.reactive(
      viewModelBuilder: () => FreshCutTabViewModel(),
      builder: (vmContext, viewmodel, vmChild) {
        return RootWrapper(
          avoidSafeArea: true,
          child: viewmodel.getCurrentChild(),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Glassmorphism(
            blur: 10,
            opacity: .8,
            radius: 24,
            backgroundColor: BaseColors.black,
            child: BottomNavigationBar(
              onTap: (index) => viewmodel.selectChildAt(index),
              currentIndex: viewmodel.currIndex,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              selectedItemColor: BaseColors.main,
              unselectedItemColor: BaseColors.grey2,
              showUnselectedLabels: false,
              items: viewmodel.tabItems,
            ),
          ),
        );
      },
    );
  }
}
