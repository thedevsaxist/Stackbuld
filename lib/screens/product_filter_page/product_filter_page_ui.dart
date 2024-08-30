import 'package:stackbuld/commons.dart';

part 'product_filter_page_logic.dart';

class ProductFilterPageUi extends StatefulWidget {
  const ProductFilterPageUi({super.key});

  @override
  State<ProductFilterPageUi> createState() => _ProductFilterPageUi();
}

class _ProductFilterPageUi extends ProductFilterPageLogic {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
