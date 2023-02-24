import 'package:flutter/material.dart';
import 'package:newsapp/view/home/category_grid_view.dart';
import 'package:newsapp/view/widget/categor_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <CategoryDataClass> item=[
    CategoryDataClass(
        categoryTitle: "Sports",
        categoryID: "sports",
        categoryImage: "assets/images/sports.png",
        categoryBackground:const Color(0xFFC91C22),
    ),
    CategoryDataClass(
      categoryTitle: "General",
      categoryID: "general",
      categoryImage: "assets/images/Politics.png",
      categoryBackground:const Color(0xFF003E90),
    ),
    CategoryDataClass(
      categoryTitle: "Health",
      categoryID: "health",
      categoryImage: "assets/images/health.png",
      categoryBackground:const Color(0xFFED1E79),
    ),
    CategoryDataClass(
      categoryTitle: "Business",
      categoryID: "business",
      categoryImage: "assets/images/bussines.png",
      categoryBackground:const Color(0xFFCF7E48),
    ),
    CategoryDataClass(
      categoryTitle: "Environment",
      categoryID: "entertainment",
      categoryImage: "assets/images/environment.png",
      categoryBackground:const Color(0xFF4882CF),
    ),
    CategoryDataClass(
      categoryTitle: "Science",
      categoryID: "science",
      categoryImage: "assets/images/science.png",
      categoryBackground:const Color(0xFFF2D352),
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(selectedItem==null?"NewsApp": selectedItem!.categoryTitle,
          style: Theme.of(context).textTheme.headline4,),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)
          )
        ),

      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.symmetric(vertical:45),
              width: double.infinity,
              height: 120,
              color: Theme.of(context).primaryColor,
              child: Text("NewsApp",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  selectedItem=null;
                  Navigator.pop(context);
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal:10,
                  vertical: 15
                ),
                child: Row(
                  children: [
                    Icon(Icons.category,size:30 ,color: Colors.black,),
                    SizedBox(width: 20,),
                    Text("Category",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                ),
                child: Row(
                  children: [
                    Icon(Icons.settings,size:30 ,color: Colors.black,),
                    SizedBox(width: 20,),
                    Text("Settings",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: selectedItem == null ?
      Container(
        width:double.infinity,
        height: double.infinity,
        decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pattern.png"),
              fit: BoxFit.cover,

            )
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20
              ),
              child: Text("Pick your Category ${"\n"}of interest",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding:const EdgeInsets.all(10),
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                  crossAxisSpacing: 8,

                ),
                itemBuilder:(context,index)=>CategoryGridView(item[index],index,onClick),
                itemCount: item.length,
              ),
            )
          ],
        ),

      ):
      CategoryNewsList(selectedItem!) ,
    );
  }
  CategoryDataClass ? selectedItem = null ;
  void onClick(CategoryDataClass category){
    setState(() {
      selectedItem=category;
    });
  }
}
