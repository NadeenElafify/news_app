import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category:category.catregoryName );
            },
          ),
        ) ;
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.imageUrl), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
              child: Text(
            category.catregoryName,
            style: TextStyle(fontSize: 18),
          )),
        ),
      ),
    );
  }
}
