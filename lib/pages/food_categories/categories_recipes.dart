class Food {
  final String name;
  final String imagePath;
  final FoodCategory category;
  final String description;
  final String description2;
  final String description3;

  Food({
    required this.name,
    required this.imagePath,
    required this.category,
    required this.description,
    required this.description2,
    required this.description3,
  });
}

enum FoodCategory {
  all,
  sugarFree,
  glutenFree,
  lactoseFree,
  nutsFree,
  vegetablesFree,
  fruitsFree
}

extension FoodCategoryExtension on FoodCategory {
  String get categoryName {
    switch (this) {
      case FoodCategory.all:
        return 'Все рецепты';
      case FoodCategory.sugarFree:
        return 'Без сахара';
      case FoodCategory.glutenFree:
        return 'Без глютена';
      case FoodCategory.lactoseFree:
        return 'Без лактозы';
      case FoodCategory.nutsFree:
        return 'Без орехов';
      case FoodCategory.vegetablesFree:
        return 'Без овощей';
      case FoodCategory.fruitsFree:
        return 'Без фруктов';
      default:
        return '';
    }
  }
}