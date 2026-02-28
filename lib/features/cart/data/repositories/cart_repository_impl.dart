import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];

  @override
  List<Product> getItems() => _items;

  @override
  void add(Product product) {
    _items.add(product);
  }

  @override
  void clear() {
    _items.clear();
  }
}
