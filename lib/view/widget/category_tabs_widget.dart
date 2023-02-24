import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/model/source.dart';
import 'package:newsapp/view/widget/category_tab_item.dart';

class CategoryTabsWidget extends StatefulWidget {
   List<Source> sources;

   CategoryTabsWidget(this.sources);

  @override
  State<CategoryTabsWidget> createState() => _CategoryTabsWidgetState();
}

class _CategoryTabsWidgetState extends State<CategoryTabsWidget> {
   int index=0;
   bool selected=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              onTap: (clik){
                index=clik;
                setState(() {
                });
              },
              tabs: widget.sources.map((item) => CategoryTab(item,
              widget.sources.indexOf(item)==index? selected : !selected
              ) ).toList(),
              isScrollable: true,
              indicatorColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
