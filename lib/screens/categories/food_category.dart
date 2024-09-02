import 'package:stackbuld/commons.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> foodProductsList = [
      ProductModel(
        name: 'Bread',
        price: '1,000',
        rating: 5,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Indomie',
        price: '200',
        rating: 4,
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Yam',
        price: '3,000',
        rating: 3,
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
      productsList: foodProductsList,
    );
  }
}
