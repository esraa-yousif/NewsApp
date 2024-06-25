import 'package:flutter/material.dart';
import 'package:news_app0/models/category_model.dart';
import 'package:news_app0/screens/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return CategoryPage(
              category: category.name,
            );
          })
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image)
            ),
            borderRadius: BorderRadius.circular(10),
            ),
          child: Center(
            child: Text(category.name, style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ),
        ),
      ),
    );

  }
}
