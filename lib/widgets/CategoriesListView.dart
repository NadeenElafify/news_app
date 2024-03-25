
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categoryCard.dart';

class CategoriesListView extends StatelessWidget {


   const CategoriesListView({
    super.key
  });

  final List<CategoryModel> categories= const[
    CategoryModel(imageUrl: 'images/technology.jpg', catregoryName: "Technology"),
    CategoryModel(imageUrl: 'images/health.jpg', catregoryName: "Health"),
    CategoryModel(imageUrl: 'images/entertainment.jpeg', catregoryName: "Entertainment"),
    CategoryModel(imageUrl: 'images/bussiness.avif', catregoryName: "Business "),
    CategoryModel(imageUrl: 'images/5.jpg', catregoryName: "number Five ")
  ];

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
        return  CategoryCard(
          category:categories[index],
        );
      }),
    );
  }
}