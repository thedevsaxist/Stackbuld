/// This is a model of each product in the app
class ProductModel {
  final String name;
  final String price;
  final int rating;
  final String description;
  final String productImage;

  const ProductModel({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.productImage,
  });
}
