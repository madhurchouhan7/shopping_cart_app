import 'package:flutter/material.dart';
import 'package:shopping_cart_app/models/item_model.dart';

class ItemProvider with ChangeNotifier {
  final List<ItemModel> _items = [
    // Bell pepper
    ItemModel(
      id: 1,
      title: "Bell Pepper",
      price: 20,
      productPhoto: "lib/assets/bellpepper.png",
      description: "",
    ),

    // Cabbage
    ItemModel(
      id: 2,
      title: "Cabbage",
      price: 20,
      productPhoto: "lib/assets/cabbage.png",
      description: "",
    ),

    // Carrot
    ItemModel(
      id: 3,
      title: "Carrot",
      price: 20,
      productPhoto: "lib/assets/carrot.png",
      description: "",
    ),

    // Cucumber
    ItemModel(
      id: 4,
      title: "Cucumber",
      price: 20,
      productPhoto: "lib/assets/cucumber.png",
      description: "",
    ),

    // pepper
    ItemModel(
      id: 5,
      title: "Pepper",
      price: 20,
      productPhoto: "lib/assets/peppers.png",
      description: "",
    ),

    // Radish
    ItemModel(
      id: 6,
      title: "Radish",
      price: 20,
      productPhoto: "lib/assets/radish.png",
      description: "",
    ),

    // Tomato
    ItemModel(
      id: 7,
      title: "Tomato",
      price: 20,
      productPhoto: "lib/assets/tomato.png",
      description: "",
    ),
  ];

  // getter method for the items list
  // ... is called a spread operator.
  List<ItemModel> get items {
    return [..._items];
  }

  //
  List<ItemModel> get addedToCart {
    return _items.where((items) => items.isAddedToCart).toList();
  }

  //#TODO: know the meaning the the code
  
  // method to toggle add-to-cart of an item
  void toggleCart(int id) {
    final itemIndex = _items.indexWhere((items) => items.id == id);
    if (itemIndex >= 0) {
      _items[itemIndex].isAddedToCart = !_items[itemIndex].isAddedToCart;

      // notify all consumers to hold this data.
      notifyListeners();
    }
  }
}
