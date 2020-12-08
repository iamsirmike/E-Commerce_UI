import 'package:flutter/widgets.dart';

class CartItemsModel {
  final String image;
  final String title;
  final int price;
  final Color color;
  final int quantity;

  CartItemsModel({
    this.image,
    this.title,
    this.price,
    this.color,
    this.quantity,
  });
}

class CartItems extends ChangeNotifier {
  bool isadded = false;
  List<CartItemsModel> addedCartItems = [];
  void onItemAdded(image, title, price, color, quantity) {
    final addedCartItem = CartItemsModel(
      image: image,
      title: title,
      price: price,
      color: color,
      quantity: quantity,
    );
    addedCartItems.add(addedCartItem);
    notifyListeners();
  }

  added() {
    isadded = !isadded;
    notifyListeners();
  }

  getTotal() {
    var sum = 0;
    for (var i = 0; i < addedCartItems.length; i++) {
      sum += addedCartItems[i].price;
      notifyListeners();
    }
    return sum;
  }

  removeCartItem(index) {
    addedCartItems.remove(addedCartItems[index]);
    notifyListeners();
  }

  clearCartItems() {
    addedCartItems.clear();
    notifyListeners();
  }
}
