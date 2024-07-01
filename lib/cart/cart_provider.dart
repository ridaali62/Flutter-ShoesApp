import 'package:flutter/widgets.dart';

import '../widgets/myapp_clr.dart';

class cart {
  List<dynamic> cartproduct;
  int quantity;
  cart(this.cartproduct, this.quantity);
}

class CartProvider with ChangeNotifier {
  List cartItems = [];
  String Counter() {
    int totalitem = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalitem++;
    }
    return totalitem.toString();
  }

  void additem(int value) {
    cartItems.add(cart(Product[value], 1));
    notifyListeners();
  }

  void removeitem(int value) {
    if (cartItems[value].quantity == 1) {
      cartItems.removeAt(value);
      notifyListeners();
    } else {
      cartItems[value].quantity--;
      notifyListeners();
    }
  }

  String addTotalPrice() {
    double price = 0.0;
    for (int i = 0; i < cartItems.length; i++) {
      price +=
          double.parse(cartItems[i].cartproduct[2]) * cartItems[i].quantity;
    }
    return price.toString();
  }

  void increaseQuantity(int index) {
    cartItems[index].quantity++;
    notifyListeners();
  }
}
