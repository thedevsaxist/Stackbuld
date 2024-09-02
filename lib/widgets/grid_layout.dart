import 'package:stackbuld/commons.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.productsList,
  });

  final List<ProductModel> productsList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      shrinkWrap: true,
      itemCount: productsList.length,
      itemBuilder: (context, index) {
        return ItemCard(
          productName: productsList[index].name,
          productPrice: productsList[index].price,
          productRating: productsList[index].rating,
          description: productsList[index].description,
          imagePath: productsList[index].productImage,
        );
      },
    );
  }
}
