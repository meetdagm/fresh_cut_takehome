import 'package:flutter/cupertino.dart';
import 'package:fresh_cut_dagmawi/helpers/asset_constants.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';
import 'package:fresh_cut_dagmawi/ui/startup/placeholder_screens.dart';
import 'package:fresh_cut_dagmawi/ui/trending/trending_view.dart';
import 'package:stacked/stacked.dart';

class FreshCutTabViewModel extends BaseViewModel {
  final List<Widget> _tabs = [
    const TrendingView(), // see the HomeTab class below
    HomeView(),
    NavigationView(),
    ChatView(),
    ProfileView(), // see the SettingsTab class below
  ];

  int _selectedIndex = 0;

  List<BottomNavigationBarItem> get tabItems => [
        BottomNavigationBarItem(
          icon: const Icon(
            CupertinoIcons.flame,
          ),
          label: "Hot",
          activeIcon: _addShadowToActiveIcon(
            child: const Icon(
              CupertinoIcons.flame_fill,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.compass),
          label: "Discover",
          activeIcon: _addShadowToActiveIcon(
            child: const Icon(CupertinoIcons.compass_fill),
          ),
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(AssetImage(homePlayIcon)),
          label: "Watch",
          activeIcon: _addShadowToActiveIcon(
            child: const ImageIcon(AssetImage(homePlayIcon)),
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.chat_bubble_text),
          label: "Inbox",
          activeIcon: _addShadowToActiveIcon(
            child: const Icon(CupertinoIcons.chat_bubble_text_fill),
          ),
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(1.5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: BaseColors.grey3,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Image(
                  image: AssetImage(profileImage),
                  width: 24,
                  height: 24,
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: BaseColors.black2.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          label: "Profile",
          activeIcon: _addShadowToActiveIcon(
            child: Container(
              padding: const EdgeInsets.all(1.5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: BaseColors.main,
              ),
              child: const Image(
                image: AssetImage(profileImage),
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
        // BottomnavigationBarIte
      ];

  Widget getCurrentChild() {
    return _tabs[_selectedIndex];
  }

  int get currIndex {
    return _selectedIndex;
  }

  _addShadowToActiveIcon({required Widget child}) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: BaseColors.main,
            blurRadius: 9,
            spreadRadius: -3,
            offset: Offset(0, 1.5),
            blurStyle: BlurStyle.normal,
          ),
          BoxShadow(
            color: BaseColors.main,
            blurRadius: 60,
            spreadRadius: 7,
            offset: Offset(0, 56),
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: child,
    );
  }

  selectChildAt(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
