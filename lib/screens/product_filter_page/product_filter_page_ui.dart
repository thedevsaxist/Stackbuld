import 'package:flutter/material.dart';  // change this to the path to your commons.dart file

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
