import 'package:flutter/material.dart';
import 'categories_recipes.dart';


class ChooseLunch extends ChangeNotifier{
  final List<Food> _menuLunch = [
    //all
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/lunch/turkey.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/lunch/chicken.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/lunch/pasta_with_chicken.jpg', category: FoodCategory.all,description: "", description2: "", description3: ""),
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.all,description: "", description2: "", description3: ""),
    Food(name: "Рыбное суфле", imagePath: 'images/lunch/fish_souffle.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/lunch/beef.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Паста Болоньезе", imagePath: 'images/lunch/pasta_Bolognese.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),
    Food(name: "Плов из курицы", imagePath: 'images/lunch/chicken_pilaf.jpg', category: FoodCategory.all, description: "", description2: "", description3: ""),

    //sugarFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/lunch/turkey.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/lunch/chicken.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/lunch/pasta_with_chicken.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Рыбное суфле", imagePath: 'images/lunch/fish_souffle.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Паста Болоньезе", imagePath: 'images/lunch/pasta_Bolognese.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),
    Food(name: "Плов из курицы", imagePath: 'images/lunch/chicken_pilaf.jpg', category: FoodCategory.sugarFree, description: "", description2: "", description3: ""),

    //glutenFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/lunch/turkey.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),
    Food(name: "Плов из курицы", imagePath: 'images/lunch/chicken_pilaf.jpg', category: FoodCategory.glutenFree, description: "", description2: "", description3: ""),


    //lactoseFree,
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Паста Болоньезе", imagePath: 'images/lunch/pasta_Bolognese.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.lactoseFree, description: "", description2: "", description3: ""),


    //nutsFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/lunch/turkey.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/lunch/chicken.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/lunch/pasta_with_chicken.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Рыбное суфле", imagePath: 'images/lunch/fish_souffle.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/lunch/beef.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Паста Болоньезе", imagePath: 'images/lunch/pasta_Bolognese.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),
    Food(name: "Плов из курицы", imagePath: 'images/lunch/chicken_pilaf.jpg', category: FoodCategory.nutsFree, description: "", description2: "", description3: ""),

    //vegetablesFree,
    Food(name: "Паста с курицей и грибами", imagePath: 'images/lunch/pasta_with_chicken.jpg', category: FoodCategory.vegetablesFree, description: "", description2: "", description3: ""),

    //fruitsFree
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/lunch/turkey.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/lunch/chicken.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/lunch/pasta_with_chicken.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Рыба с овощами", imagePath: 'images/lunch/fish.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Рыбное суфле", imagePath: 'images/lunch/fish_souffle.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/lunch/beef.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Паста Болоньезе", imagePath: 'images/lunch/pasta_Bolognese.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/lunch/funchosa.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/lunch/turkey_stew.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
    Food(name: "Плов из курицы", imagePath: 'images/lunch/chicken_pilaf.jpg', category: FoodCategory.fruitsFree, description: "", description2: "", description3: ""),
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
