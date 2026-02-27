import 'package:flutter/material.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

//1. STATE MODEL
class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String itemName) {
    _items.add(itemName);
    notifyListeners(); // WAJIB agar UI update
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
