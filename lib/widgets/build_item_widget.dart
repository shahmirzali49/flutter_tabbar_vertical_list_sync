import 'package:flutter/widgets.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class BuildItemWidget extends StatelessWidget {
  const BuildItemWidget({
    Key? key,
     required this.itemsKeys,
    required this.scrollController,
     required this.index,
    required this.listItemData,
    required this.eachItemChild,
  }) : super(key: key);

   final Map<int, dynamic> itemsKeys;
  final AutoScrollController scrollController;
   final int index;
  final List<dynamic> listItemData;
  final Widget Function(dynamic aaa, int index) eachItemChild;

  @override
  Widget build(BuildContext context) {
    dynamic category = listItemData[index];
    return RectGetter(
      key: itemsKeys[index],
      child: AutoScrollTag(
        key: ValueKey(index),
        index: index,
        controller: scrollController,
        child: eachItemChild(category, index),
      ),
    );
  }
}
