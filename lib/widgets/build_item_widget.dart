import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

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
    log("INITSTATE BuildVerticalSliverList WIDGET EN SON");
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BuildItemWidget oldWidget) {
    log("didUpdateWidget BuildVerticalSliverList WIDGET EN SON");
    if (widget.eachItemChild == oldWidget.eachItemChild) {
      
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    dynamic category = widget.listItemData[widget.index];
    return RectGetter(
      key: GlobalKey(),
      child: AutoScrollTag(
        key: ValueKey(widget.index),
        index: widget.index,
        controller: widget.scrollController,
        child: widget.eachItemChild(category, widget.index),
      ),
    );
  }
}
