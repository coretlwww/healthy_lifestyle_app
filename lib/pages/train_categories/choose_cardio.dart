import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:flutter/material.dart';

class ChooseCardio extends ChangeNotifier{
  final List<Workout> _cardio = [
    Workout(name: "High knees", description: "", description2: "", description3: ""),
    Workout(name: "Боковые удары", description: "", description2: "", description3: ""),
    Workout(name: "Конькобежец", description: "", description2: "", description3: ""),
    Workout(name: "Армейский прыжок", description: "", description2: "", description3: ""),
    Workout(name: "Прыжки из приседа", description: "", description2: "", description3: ""),
    Workout(name: "Выпады с прыжками", description: "", description2: "", description3: ""),
    Workout(name: "Динамичная планка", description: "", description2: "", description3: ""),
    Workout(name: "Скалолаз", description: "", description2: "", description3: ""),
    Workout(name: "Берпи", description: "", description2: "", description3: ""),
    Workout(name: "Брейк-данс", description: "", description2: "", description3: ""),
  ];

  List<Workout> get cardio => _cardio;

  final List<Workout> _cart = [];
  List<Workout> get cart => _cart;

  void addToCart(Workout item) {
    if (!_cart.contains(item)) {
      _cart.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(Workout item) {
    if (_cart.contains(item)) {
      _cart.remove(item);
    }
    notifyListeners();
  }

  bool isInCart(Workout item) {
    return cart.contains(item);
  }
}