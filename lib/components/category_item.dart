import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.3),
                category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
