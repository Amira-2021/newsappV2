import 'package:flutter/material.dart';
import 'package:newsapp/core/api/api_manager.dart';
import 'package:newsapp/core/model/SourceResponse.dart';
import 'package:newsapp/view/home/category_grid_view.dart';
import 'package:newsapp/view/widget/category_tabs_widget.dart';

class CategoryNewsList extends StatelessWidget {
   static const String routeName="category";
   CategoryDataClass categoryDataClass ;
   CategoryNewsList (this.categoryDataClass);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<SourceResponse>(
        future:ApiManager.getSources(categoryDataClass.categoryID),
        builder: (context,snapshot){
          if(snapshot.connectionState== ConnectionState.waiting)
            {
              return Center(child: CircularProgressIndicator(),);
            }

        },
      ),
    );

  }
  

}





