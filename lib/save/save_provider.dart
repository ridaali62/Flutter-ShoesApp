import 'package:flutter/widgets.dart';

import '../widgets/myapp_clr.dart';

class save{
  List<dynamic> saveproduct;
  int quantity;
  save(this.saveproduct, this.quantity);
}

class SaveProvider with ChangeNotifier {
  List saveItems = [];

  void additem(int value) {
    saveItems.add(save(Product[value], 1));
    notifyListeners();
  }

  void removeitem(int value) {
      saveItems.removeAt(value);
      notifyListeners();
  }



}
