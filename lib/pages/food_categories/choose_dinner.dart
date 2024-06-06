import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseDinner extends ChangeNotifier{
  final List<Food> _menuDinner = [
    //all
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/dinner/pasta.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/dinner/rice.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/dinner/casserole_with_cottage_cheese.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/dinner/casserole_with_chicken.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/dinner/vegetable_stew.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/dinner/liver_pancakes.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),

    //sugarFree,
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/dinner/pasta.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/dinner/casserole_with_cottage_cheese.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/dinner/casserole_with_chicken.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/dinner/vegetable_stew.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/dinner/liver_pancakes.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),

    //glutenFree,
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/dinner/casserole_with_chicken.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/dinner/vegetable_stew.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),


    //lactoseFree,
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/dinner/pasta.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/dinner/rice.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/dinner/liver_pancakes.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),

    //nutsFree,
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/dinner/rice.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/dinner/casserole_with_cottage_cheese.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/dinner/casserole_with_chicken.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/dinner/vegetable_stew.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/dinner/liver_pancakes.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),

    //vegetablesFree,
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),

    //fruitsFree
    Food(name: "Паста с цветной капустой и тунцом", imagePath: 'images/dinner/pasta.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Жареный рис с курицей, стручковой фасолью, овощами и яйцами", imagePath: 'images/dinner/rice.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка из кабачков с творогом", imagePath: 'images/dinner/casserole_with_cottage_cheese.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Жареная картошка с грибами и луком", imagePath: 'images/dinner/potato.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеканка с кабачками и куриным филе", imagePath: 'images/dinner/casserole_with_chicken.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Вегетарианское овощное рагу", imagePath: 'images/dinner/vegetable_stew.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Печёночные оладьи", imagePath: 'images/dinner/liver_pancakes.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Минтай в соевом соусе, запеченный в фольге", imagePath: 'images/dinner/pollock.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Запеченное филе индейки", imagePath: 'images/dinner/turkey_fillet.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Бигус из квашеной капусты", imagePath: 'images/dinner/bigus.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
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