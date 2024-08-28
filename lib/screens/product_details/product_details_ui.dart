import 'package:flutter/material.dart';  // change this to the path to your commons.dart file

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
