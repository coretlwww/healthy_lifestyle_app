import 'package:flutter/material.dart';
import 'categories_recipes.dart';

class ChooseBreakfast extends ChangeNotifier{
  final List<Food> _menuBreakfast = [
    //all
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: '/salad'),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.all, pagePath: ''),

    //sugarFree,
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    Food(name: "Запеканка из тыквы с морковью", imagePath: 'images/to.jpg', category: FoodCategory.sugarFree, pagePath: ''),
    
    //glutenFree,


    //lactoseFree,
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),
    Food(name: "Морковные кексы с яблоками и орехами", imagePath: 'images/to.jpg', category: FoodCategory.lactoseFree, pagePath: ''),

    //nutsFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.nutsFree, pagePath: ''),

    //vegetablesFree,
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),
    Food(name: "Кекс с орехами и бананами", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),
    Food(name: "Блины с творогом и клубникой", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.vegetablesFree, pagePath: ''),

    //fruitsFree
    Food(name: "Пышные сырники", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Яичные блинчики с ветчиной и сыром", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Оладьи кабачковые", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Капустные оладьи на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Запеканка творожная", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
    Food(name: "Манник на кефире", imagePath: 'images/to.jpg', category: FoodCategory.fruitsFree, pagePath: ''),
  ];

  List<Food> get menuBreakfast => _menuBreakfast;

}