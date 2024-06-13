import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:flutter/material.dart';

class ChooseCardio extends ChangeNotifier{
  final List<Workout> _cardio = [
    Workout(name: "Боковые удары", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
    Workout(name: "...", description: "", description2: "", description3: ""),
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