import 'package:stackbuld/commons.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.catalogue,
  });

  final CollectionReference<Object?> catalogue;

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> getCollectionStream(
        CollectionReference collectionRef) {
      return collectionRef.snapshots();
    }

    /// instance of the database connection
    final FirestoreDatabase firestoreDatabase = FirestoreDatabase();

    return StreamBuilder(
      stream: firestoreDatabase.foodCatalogue.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("Waiting");
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          print("There's an error in the food catalogue: ${snapshot.error}");
        } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          print("The catalogue is empty");
        }

        final productsList = snapshot.data!.docs.map((doc) {
          return ProductModel.fromMap(doc.data() as Map<String, dynamic>);
        }).toList();

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8,
            crossAxisCount: 2,
          ),
          shrinkWrap: true,
          itemCount: productsList.length,
          itemBuilder: (context, index) {
            ProductModel product = productsList[index];
            return ItemCard(
              productName: product.name,
              productPrice: product.price,
              productRating: double.parse(product.rating!),
              description: product.description!,
              imagePath: product.productImage,
            );
          },
        );
      },
    );
  }
}
