import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {Key? key}) : super(key: key);

  void _selectCategory(BuildContext context) {
    // Redireciona para uma rota nomeada.
    // Arguments é para passar algum tipo de dados para a rota, nesse caso está sendo passado as categorias
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme
          .of(context)
          .primaryColor,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        child: Text(
          category.title,
          style: Theme
              .of(context)
              .textTheme
              .headline6,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.5), category.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
