import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseLunch extends ChangeNotifier{
  final List<Food> _menuLunch = [
    //all
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),

    //sugarFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),

    //glutenFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, pagePath: ''),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, pagePath: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.glutenFree, pagePath: ''),


    //lactoseFree,
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),


    //nutsFree,
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: '/salad'),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: '/salad'),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: '/salad'),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),

    //vegetablesFree,
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: '/salad'),

    //fruitsFree
    Food(name: "Индейка с брокколи в сливочном соусе", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: '/salad'),
    Food(name: "Курица тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: '/salad'),
    Food(name: "Паста с курицей и грибами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: '/salad'),
    Food(name: "Рыба с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Рыбное суфле", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Говядина тушеная с овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Паста Болоньезе", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Фунчоза с говядиной и овощами", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Рагу с индейкой и стручковой фасолью", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Плов из курицы", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
  ];

  List<Food> get menuLunch => _menuLunch;

}