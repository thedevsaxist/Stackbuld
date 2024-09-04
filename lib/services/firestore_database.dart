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
}




















  // Future getProductId() async {
  //   await foodCatalogue.get().then((food) => food.docs.forEach((document) {
  //         foodId.add(document.reference.id);
  //       }));
  // }