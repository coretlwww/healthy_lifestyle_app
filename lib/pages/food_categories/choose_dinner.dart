import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseDinner extends ChangeNotifier{
  final List<Food> _menuDinner = [
    //all
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/to.jpg', category: FoodCategory.all, description: "Рецепт:"),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ""),

    //sugarFree,
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: "Рецепт:"),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ""),

    //glutenFree,
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ""),


    //lactoseFree,
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: "Рецепт:"),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ""),

    //nutsFree,
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ""),

    //vegetablesFree,
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ""),

    //fruitsFree
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: "Рецепт:"),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ""),
  ];

  List<Food> get menuDinner => _menuDinner;

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