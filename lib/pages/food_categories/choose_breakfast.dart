import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseBreakfast extends ChangeNotifier{
  final List<Food> _menuBreakfast = [
    //all
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.all),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all),

    //sugarFree,
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree),
    
    //glutenFree,


    //lactoseFree,
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree),

    //nutsFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree),

    //vegetablesFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree),

    //fruitsFree
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree),
  ];

  List<Food> get menuBreakfast => _menuBreakfast;

  List<Food> _cart = [];
  List<Food> get cart => _cart;

  void addToCart(Food foodItem) {
    if (!_cart.contains(foodItem))
       _cart.add(foodItem);
      notifyListeners();
  }

  void removeFromCart(Food foodItem) {
    if (_cart.contains(foodItem))
      _cart.remove(foodItem);
      notifyListeners();
  }

  bool isInCart(Food foodItem) {
    return cart.contains(foodItem);
  }
}

