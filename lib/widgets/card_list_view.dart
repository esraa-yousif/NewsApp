import 'package:flutter/cupertino.dart';
import 'package:news_app0/models/category_model.dart';
import 'package:news_app0/widgets/category_card.dart';

class CardListView extends StatelessWidget {
   CardListView({super.key});

final List<CategoryModel> categories = [

  CategoryModel(
      image: 'assets/business.jpg',
      name: 'Business'),
  CategoryModel(
      image: 'assets/entertaiment.jpeg',
      name: 'Entertainment'),
  CategoryModel(
      image: 'assets/general.jpg',
      name: 'General'),
  CategoryModel(
      image: 'assets/health.jpeg',
      name: 'Health'),
  CategoryModel(
      image: 'assets/science.jpeg',
      name: 'Science'),
  CategoryModel(
      image: 'assets/sports.jpg',
      name: 'sports'),
  CategoryModel(
      image: 'assets/technology.jpeg',
      name: 'Technology'),

];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (context, index){
        return CategoryCard(
          category: categories[index],
        );
      }),
    );
  }
}
