import 'package:fresh_cut_dagmawi/models/feed_model.dart';
import 'package:fresh_cut_dagmawi/ui/shared/styles.dart';

class MockDatabase {
  final List<FeedModel> _data = [
    FeedModel(
      title: "Smash Stockpile",
      url: "assets/images/yellow.png",
      newItemCount: 10,
      completedSteps: 15,
      totalSteps: 30,
      primaryColor: BaseColors.main,
    ),
    FeedModel(
      title: "FGC Rumble",
      url: "assets/images/purple.png",
      newItemCount: 16,
      totalSteps: 16,
      completedSteps: 0,
      primaryColor: BaseColors.purple,
    ),
    FeedModel(
      title: "Valorant Volume",
      url: "assets/images/red.png",
      newItemCount: 21,
      totalSteps: 21,
      completedSteps: 21,
      primaryColor: BaseColors.red,
    ),
  ];

  List<FeedModel> read() {
    return _data;
  }
}
