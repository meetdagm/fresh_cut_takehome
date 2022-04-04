import 'package:fresh_cut_dagmawi/models/feed_model.dart';
import 'package:fresh_cut_dagmawi/services/image_color_extractor.dart';
import 'package:fresh_cut_dagmawi/services/mock_database.dart';
import 'package:fresh_cut_dagmawi/ui/components/gradient_card.dart';
import 'package:stacked/stacked.dart';

class TrendingViewModel extends BaseViewModel {
  final MockDatabase _database = MockDatabase();
  // final ImageColorExtractor _colorExtractor = ImageColorExtractor(); // We can initiate the class here
  late final List<FeedModel> _data;

  TrendingViewModel() {
    _data = _database.read();
  }

  int get count {
    return _data.length;
    // return 0;
  }

  getCardForItemAt({required int index}) {
    return GradientCard(
      assetURL: _data[index].url,
      primaryColor: _data[index]
          .primaryColor, // We can use the class in /services/image_color_extractor to dynamically get the primary color from an image
      title: _data[index].title,
      subTitle: "+${_data[index].newItemCount} New Videos",
      completedSteps: _data[index].completedSteps,
      totalSteps: _data[index].totalSteps,
    );
  }
}
