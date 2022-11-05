import 'package:flutter/widgets.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/widgets/build_item_widget.dart';

class BuildVerticalSliverList extends StatelessWidget {
  const BuildVerticalSliverList({
    Key? key,
    required this.itemsKeys,
    required this.scrollController,
    required this.listItemData,
    required this.eachItemChild,
  }) : super(key: key);

  final Map<int, dynamic> itemsKeys;
  final AutoScrollController scrollController;
  final List<dynamic> listItemData;
  final Widget Function(dynamic aaa, int index) eachItemChild;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(
        listItemData.length,
        (index) {
          // 建立 itemKeys 的 Key
          itemsKeys[index] = RectGetter.createGlobalKey();
          return BuildItemWidget(
            itemsKeys: itemsKeys,
            scrollController: scrollController,
            index: index,
            listItemData: listItemData,
            eachItemChild: eachItemChild,
          );
        },
      )),
    );
  }
}
