import 'package:stackbuld/commons.dart';

class DevicesCategory extends StatelessWidget {
  const DevicesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> deviceProductsList = [
      ProductModel(
        name: 'Galaxy Z Fold 6',
        price: '2,300,000',
        rating: 5,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'iPhone 15 Pro Max',
        price: '1,400,000',
        rating: 5,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'MacBook Pro M3 Ultra',
        price: '10,000,000',
        rating: 5,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Biscuit',
        price: '100',
        rating: 2,
        description: productDescription,
        productImage: m4Car,
      ),
    ];
    return GridLayout(
      catalogue: FirestoreDatabase().foodCatalogue,
    );
  }
}
