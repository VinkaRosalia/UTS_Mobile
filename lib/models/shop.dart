import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    // Matcha cake
    Food(
      name: "Matcha Cake", 
      price: "20.00", 
      imagePath: "lib/images/Matcha Cake.png", 
      rating: "4.9",),

    // Cheesecake
    Food(
      name: "Cheese Cake", 
      price: "21.00", 
      imagePath: "lib/images/Cheesecake.png", 
      rating: "4.8",),

    // Chocolate cake
    Food(
      name: "Chocolate Cake", 
      price: "22.00", 
      imagePath: "lib/images/Chocolate Cake.png", 
      rating: "4.9",),
  ];
  
  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity){
    for(int i = 0; i < quantity; i++){
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
  }

}