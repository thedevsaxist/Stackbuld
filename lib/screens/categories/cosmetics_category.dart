import 'package:stackbuld/commons.dart';

class CosmeticsCategory extends StatelessWidget {
  const CosmeticsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> cosmeticProductsList = [
      ProductModel(
        description: productDescription,
        name: 'Mascara',
        price: '1,000',
        rating: '5',
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Eye shadow',
        price: '2,000',
        rating: '4',
        description: productDescription,
        productImage: m4Car,
      ),
      ProductModel(
        name: 'Acrylic Nails',
        price: '8,000',
        rating: '5',
        description: productDescription,
        productImage: m4Car,
      ),
    ];
    return GridLayout(
      catalogue: FirestoreDatabase().foodCatalogue,
    );
  }
}
