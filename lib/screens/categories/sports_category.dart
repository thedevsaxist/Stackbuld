import 'package:stackbuld/commons.dart';

class SportsCategory extends StatelessWidget {
  const SportsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> sportProductsList = const [
      ProductModel(
        name: 'Basketball Shoes',
        price: '320,000',
        rating: 5,
      ),
      ProductModel(
        name: 'Basketball',
        price: '50,000',
        rating: 4,
      ),
      ProductModel(
        name: 'Sleeves',
        price: '8,000',
        rating: 3,
      ),
      ProductModel(
        name: 'Laces',
        price: '100',
        rating: 2,
      ),
      ProductModel(
        name: 'Headband',
        price: '5,000',
        rating: 3,
      ),
    ];
    return GridLayout(
      productsList: sportProductsList,
    );
  }
}
