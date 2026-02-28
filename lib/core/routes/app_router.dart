import 'package:flutter/material.dart';
import '../../features/cart/presentation/pages/catalog_page.dart';
import '../../features/cart/presentation/pages/cart_page.dart';

class AppRouter {
  static const String catalog = '/';
  static const String cart = '/cart';

  static Map<String, WidgetBuilder> routes = {
    catalog: (_) => const MyCatalog(),
    cart: (_) => const MyCart(),
  };
}
