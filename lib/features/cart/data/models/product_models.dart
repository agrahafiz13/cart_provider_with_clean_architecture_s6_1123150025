import '../../domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel(String name) : super(name);

  factory ProductModel.fromEntity(Product product) {
    return ProductModel(product.name);
  }
}
