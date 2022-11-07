import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/rect_getter.dart';
import 'package:vertical_scrollable_tabview/widgets/build_item_widget.dart';

class BuildVerticalSliverList extends StatefulWidget {
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
  State<BuildVerticalSliverList> createState() => _BuildVerticalSliverListState();
}

class _BuildVerticalSliverListState extends State<BuildVerticalSliverList> {
  @override
  void initState() {
    log("INITSTATE BuildVerticalSliverList WIDGET ");
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BuildVerticalSliverList oldWidget) {
    log("didUpdateWidget BuildVerticalSliverList WIDGET ");
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(
        widget.listItemData.length,
        (index) {
          // 建立 itemKeys 的 Key
          widget.itemsKeys[index] = RectGetter.createGlobalKey();
          return BuildItemWidget(
            itemsKeys: widget.itemsKeys,
            scrollController: widget.scrollController,
            index: index,
            listItemData: widget.listItemData,
            eachItemChild: widget.eachItemChild,
          );
        },
      )),
    );
  }
}
