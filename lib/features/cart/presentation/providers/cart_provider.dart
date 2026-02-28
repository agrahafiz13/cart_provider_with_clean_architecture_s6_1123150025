import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository repository;

  CartProvider(this.repository);

  List<Product> get items => repository.getItems();

  void add(String name) {
    repository.add(Product(name));
    notifyListeners();
  }

  void removeAll() {
    repository.clear();
    notifyListeners();
  }
}
