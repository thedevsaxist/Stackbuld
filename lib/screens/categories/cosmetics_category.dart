import 'package:stackbuld/commons.dart';

class CosmeticsCategory extends StatelessWidget {
  const CosmeticsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> cosmeticProductsList = const [
      ProductModel(
        name: 'Mascara',
        price: '1,000',
        rating: 5,
      ),
      ProductModel(
        name: 'Eye shadow',
        price: '2,000',
        rating: 4,
      ),
      ProductModel(
        name: 'Acrylic Nails',
        price: '8,000',
        rating: 5,
      ),
    ];
    return GridLayout(
      productsList: cosmeticProductsList,
    );
  }
}
