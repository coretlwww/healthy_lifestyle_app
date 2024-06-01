import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseSnack extends ChangeNotifier{
  final List<Food> _menuSnack = [
    //all
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/to.jpg', category: FoodCategory.all, description: "Рецепт:"),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),

    //sugarFree,
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),

    //glutenFree,
    Food(name: "Горячий овощной салат", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),


    //lactoseFree,
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),

    //nutsFree,
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: "Рецепт:"),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),

    //vegetablesFree,
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),

    //fruitsFree
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: "Рецепт:"),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
  ];

  List<Food> get menuSnack => _menuSnack;

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