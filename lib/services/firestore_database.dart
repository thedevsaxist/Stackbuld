import 'package:stackbuld/commons.dart';

/// central connection to the database
class FirestoreDatabase {
  /// get collection of foods
  final CollectionReference foodCatalogue =
      FirebaseFirestore.instance.collection('Food Catalogue');

  /// Document IDs from the database
  final List<String> foodId = [];

  /// This method gets the id of each element in the Food Catalogue from the database
  Future getProducts() async {
    QuerySnapshot<Object?> querySnapshot = await foodCatalogue.get();

    for (var doc in querySnapshot.docs) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      print("product name: ${data['name']}");
    }
  }

  /// This Method adds a new product to the database
  Future addProducts(
    ProductModel product,
    BuildContext context,
    CollectionReference<Object?> category,
  ) async {
    try {
      await category.add(product.toMap());

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Product added successfully!'),
      ));

      Future.delayed(const Duration(seconds: 2)).then((_) {
        return Navigator.pop(context);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to add product: $e'),
      ));
    }
  }
}




















  // Future getProductId() async {
  //   await foodCatalogue.get().then((food) => food.docs.forEach((document) {
  //         foodId.add(document.reference.id);
  //       }));
  // }