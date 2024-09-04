import 'package:stackbuld/commons.dart';

class SportsCategory extends StatelessWidget {
  const SportsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> sportProductsList =  [
      ProductModel(
        name: 'Basketball Shoes',
        price: '320,000',
        rating: 5,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Basketball',
        price: '50,000',
        rating: 4,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Sleeves',
        price: '8,000',
        rating: 3,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Laces',
        price: '100',
        rating: 2,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Headband',
        price: '5,000',
        rating: 3,
        description: productDescription,
        productImage: m4Car,
      ),
    ];
    return GridLayout(
      catalogue: FirestoreDatabase().foodCatalogue,
    );
  }
}
