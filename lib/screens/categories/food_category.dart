import 'package:stackbuld/commons.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> foodProductsList = const [
      ProductModel(
        name: 'Bread',
        price: '1,000',
        rating: 5,
      ),
      ProductModel(
        name: 'Indomie',
        price: '200',
        rating: 4,
      ),
      ProductModel(
        name: 'Yam',
        price: '3,000',
        rating: 3,
      ),
      ProductModel(
        name: 'Biscuit',
        price: '100',
        rating: 2,
      ),
    ];
    return GridLayout(
      productsList: foodProductsList,
    );
  }
}
