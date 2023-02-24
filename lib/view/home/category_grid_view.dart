import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  CategoryDataClass category;
  int index;
  Function onClick;
  CategoryGridView(this.category,this.index,this.onClick);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onClick(category);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: category.categoryBackground,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight:Radius.circular(index%2==0?0:25),
              bottomLeft: Radius.circular(index%2==0?25:0)
            )
        ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(category.categoryImage),
             const SizedBox(height: 5,),
             Text(category.categoryTitle,
             style: Theme.of(context).textTheme.headline4
             )
           ],
         ),
      ),
    );
  }
}
 class CategoryDataClass{
  String categoryTitle;
  String categoryID;
  String categoryImage;
  Color categoryBackground;
  CategoryDataClass(
      {
        required this.categoryTitle,
       required this.categoryID,
       required this.categoryImage,
       required this.categoryBackground});
}

