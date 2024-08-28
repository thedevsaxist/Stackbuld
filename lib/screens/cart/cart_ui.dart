import 'package:flutter/material.dart';  // change this to the path to your commons.dart file

part 'cart_logic.dart';

class CartPageUi extends StatefulWidget {
  const CartPageUi({super.key});

  @override
  State<CartPageUi> createState() => _CartPageUi();
}

class _CartPageUi extends CartPageLogic {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
