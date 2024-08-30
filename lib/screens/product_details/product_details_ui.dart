import 'package:stackbuld/commons.dart';

part 'product_details_logic.dart';

class ProductDetailsUi extends StatefulWidget {
  const ProductDetailsUi({super.key});

  @override
  State<ProductDetailsUi> createState() => _ProductDetailsUi();
}

class _ProductDetailsUi extends ProductDetailsLogic {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
