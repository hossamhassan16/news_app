import 'package:flutter/material.dart';
import 'package:my_news_app/models/category_model.dart';
import 'package:my_news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(imageAsset: "assets/business.avif", categoryName: "Business"),
    CategoryModel(
        imageAsset: "assets/entertaiment.avif", categoryName: "Entertaiment"),
    CategoryModel(imageAsset: "assets/general.avif", categoryName: "General"),
    CategoryModel(imageAsset: "assets/health.avif", categoryName: "Health"),
    CategoryModel(imageAsset: "assets/science.avif", categoryName: "Science"),
    CategoryModel(imageAsset: "assets/sports.avif", categoryName: "Sports"),
    CategoryModel(
        imageAsset: "assets/technology.jpeg", categoryName: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
