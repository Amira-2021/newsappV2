import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/model/source.dart';
import 'package:newsapp/view/home/category_grid_view.dart';

class CategoryTab extends StatelessWidget {
  Source sources;
  bool selected;
  CategoryTab (this.sources,this.selected);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(
        vertical: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: selected? Theme.of(context).primaryColor:
            Colors.transparent,
        border: Border.all(
          color: Theme.of(context).primaryColor
        )
      ),
      child: Text(sources.name??"",style:
        TextStyle(color:selected ? Colors.white : Theme.of(context).primaryColor)
        ,),

    );
  }
}
