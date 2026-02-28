import '../entities/product.dart';

abstract class CartRepository {
  List<Product> getItems();
  void add(Product product);
  void clear();
}
