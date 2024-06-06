import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseBreakfast extends ChangeNotifier{
  final List<Food> _menuBreakfast = [
    //all
    Food(name: "Пышные сырники", imagePath: 'images/breakfast/lush_cheesecakes.jpg', category: FoodCategory.all, description: "КБЖУ(100г) \n Калорийность: 240,1 ккал \n Белки: 12,8 г \n Жиры: 8,5 г \n Углеводы: 28,1 г", description2: "\n Ингридиенты(на 3 порции): \n 1. Творог жирностью 5% - 400 г \n Яйцо - 1 шт \n Манка - примерно 1 ст.л. \n Сахар - 2 ст.л. \n Сахар ванильный - 10 г \n Соль - 1 щепотка", description3: "\n Способ приготовления: \n 1.	Творог и яйца смешать блендером в однородную массу. "),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/breakfast/egg_pancakes.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/breakfast/squash_fritters.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/breakfast/walnut_cupcake.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/breakfast/carrot_cupcakes.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/breakfast/cabbage_fritters.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/breakfast/cheesecake.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/breakfast/pancakes.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/breakfast/pumpkin_casserole.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Манник на кефире", imagePath: 'images/breakfast/mannik.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),

    //sugarFree,
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/breakfast/egg_pancakes.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/breakfast/squash_fritters.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/breakfast/cabbage_fritters.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/breakfast/pumpkin_casserole.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    
    //glutenFree,


    //lactoseFree,
    Food(name: "Оладьи кабачковые", imagePath: 'images/breakfast/squash_fritters.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/breakfast/carrot_cupcakes.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),

    //nutsFree,
    Food(name: "Пышные сырники", imagePath: 'images/breakfast/lush_cheesecakes.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/breakfast/egg_pancakes.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/breakfast/cabbage_fritters.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/breakfast/squash_fritters.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/breakfast/cheesecake.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/breakfast/cheesecake.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Манник на кефире", imagePath: 'images/breakfast/mannik.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),

    //vegetablesFree,
    Food(name: "Пышные сырники", imagePath: 'images/breakfast/lush_cheesecakes.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/breakfast/egg_pancakes.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/breakfast/walnut_cupcake.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/breakfast/cheesecake.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/breakfast/pancakes.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),
    Food(name: "Манник на кефире", imagePath: 'images/breakfast/mannik.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),

    //fruitsFree
    Food(name: "Пышные сырники", imagePath: 'images/breakfast/lush_cheesecakes.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/breakfast/egg_pancakes.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/breakfast/squash_fritters.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/breakfast/cabbage_fritters.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/breakfast/cheesecake.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Манник на кефире", imagePath: 'images/breakfast/mannik.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
  ];

  List<Food> get menuBreakfast => _menuBreakfast;

  final List<Food> _cart = [];
  List<Food> get cart => _cart;

  void addToCart(Food foodItem) {
    if (!_cart.contains(foodItem)) {
      _cart.add(foodItem);
    }
      notifyListeners();
  }

  void removeFromCart(Food foodItem) {
    if (_cart.contains(foodItem)) {
      _cart.remove(foodItem);
    }
      notifyListeners();
  }

  bool isInCart(Food foodItem) {
    return cart.contains(foodItem);
  }
}

