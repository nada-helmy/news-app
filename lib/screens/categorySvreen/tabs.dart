import 'package:flutter/material.dart';

import 'news/handle-futurenews.dart';
import '../../models/SourceResponse.dart';
import 'tab-item.dart';

class Tabs extends StatefulWidget {

  List<Source> sourceList;

  Tabs({required this.sourceList});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:widget.sourceList.length,
        child: Column(
            children: [
           TabBar(
             onTap: (value) {
               selectedIndex=value;
               setState(() {});
             },
             isScrollable: true,
            indicatorColor: Colors.transparent,
            tabs:
              widget.sourceList.map((source) =>TabItem(
                source: source,
                isselected:selectedIndex== widget.sourceList.indexOf(source),
              )).toList()
    ),
           FutureNews(source: widget.sourceList[selectedIndex])
    ],)
    );
  }
}
