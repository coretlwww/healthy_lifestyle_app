import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseSnack extends ChangeNotifier{
  final List<Food> _menuSnack = [
    //all
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/snack/buns-coils.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/snack/chicken_sandwiches.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/snack/hot_salad.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/snack/oatmeal.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/snack/sandwiches_with_pancakes.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/snack/baguette.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/snack/bulgarian_pepper.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/snack/the_roll.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/snack/smoothie.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/snack/greek_salad.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),

    //sugarFree,
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/snack/chicken_sandwiches.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/snack/hot_salad.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/snack/oatmeal.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/snack/sandwiches_with_pancakes.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/snack/baguette.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/snack/bulgarian_pepper.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/snack/the_roll.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/snack/greek_salad.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),

    //glutenFree,
    Food(name: "Горячий овощной салат", imagePath: 'images/snack/hot_salad.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/snack/bulgarian_pepper.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/snack/greek_salad.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),


    //lactoseFree,
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/snack/the_roll.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),

    //nutsFree,
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/snack/buns-coils.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/snack/chicken_sandwiches.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/snack/hot_salad.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/snack/oatmeal.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/snack/sandwiches_with_pancakes.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/snack/baguette.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/snack/bulgarian_pepper.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/snack/the_roll.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/snack/smoothie.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Греческий салат с тунцом", imagePath: 'images/snack/greek_salad.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),

    //vegetablesFree,
    Food(name: "Смузи из творога с брусникой", imagePath: 'images/snack/smoothie.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),

    //fruitsFree
    Food(name: "Булочки-витушки со шпинатом, зелёным луком и курицей", imagePath: 'images/snack/buns-coils.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с куриным мясом, помидорами и козьим сыром", imagePath: 'images/snack/chicken_sandwiches.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Горячий овощной салат", imagePath: 'images/snack/hot_salad.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Овсяноблин с сыром", imagePath: 'images/snack/oatmeal.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Бутерброды с яичными блинчиками, ветчиной и сыром", imagePath: 'images/snack/sandwiches_with_pancakes.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Багет, запечённый с колбасой, сыром и помидором", imagePath: 'images/snack/baguette.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Закуска из болгарского перца с творогом, сыром и яйцами", imagePath: 'images/snack/bulgarian_pepper.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Рулет из лаваша и крабовых палочек с кукурузой, огурцом и яйцами", imagePath: 'images/snack/the_roll.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
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