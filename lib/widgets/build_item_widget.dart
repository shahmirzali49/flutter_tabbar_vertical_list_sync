import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/rect_getter.dart';

class BuildItemWidget extends StatefulWidget {
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
  State<BuildItemWidget> createState() => _BuildItemWidgetState();
}

class _BuildItemWidgetState extends State<BuildItemWidget> {
  @override
  void initState() {
    log("INITSTATE BuildItemWidget WIDGET EN SON");
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BuildItemWidget oldWidget) {
    log("didUpdateWidget BuildItemWidget WIDGET EN SON");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    dynamic category = widget.listItemData[widget.index];
    return widget.eachItemChild(category, widget.index);
    // RectGetter(
    //   key: widget.itemsKeys[widget.index],
    //   child: widget.eachItemChild(category, widget.index),
      //  AutoScrollTag(
      //   key: ValueKey(widget.index),
      //   index: widget.index,
      //   controller: widget.scrollController,
      //   child: widget.eachItemChild(category, widget.index),
      // ),
    // );
  }
}
