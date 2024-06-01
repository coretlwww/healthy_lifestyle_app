import 'package:flutter/material.dart';
import 'categories_recipes.dart';


class ChooseLunch extends ChangeNotifier{
  final List<Food> _menuLunch = [
    //all
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.all, description: ''),

    //sugarFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, description: ''),

    //glutenFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, description: ''),


    //lactoseFree,
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, description: ''),


    //nutsFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, description: ''),

    //vegetablesFree,
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, description: ''),

    //fruitsFree
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, description: ''),
  ];

  List<Food> get menuLunch => _menuLunch;

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
