/// This is a model of each product in the app
class ProductModel {
  final String name;
  final String price;
  final String? rating;
  final String? description;
  final String productImage;

  const ProductModel({
    this.rating,
    this.description,
    required this.name,
    required this.price,
    required this.productImage,
  });

  /// TODO: use json serializer on this
// Factory method to create a Product from a map
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      description: map['description'] ?? '',
      rating: map['rating'] ?? '',
      productImage: map['imageUrl'] ?? '',
    );
  }

  // Convert a Product to a map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'rating': rating,
      'imageUrl': productImage,
    };
  }
}
