import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseBreakfast extends ChangeNotifier{
  final List<Food> _menuBreakfast = [
    //all
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.all, description: "Рецепт:"),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),

    //sugarFree,
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    
    //glutenFree,


    //lactoseFree,
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),

    //nutsFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),

    //vegetablesFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),

    //fruitsFree
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
  ];

  List<Food> get menuBreakfast => _menuBreakfast;

  List<Food> _cart = [];
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

