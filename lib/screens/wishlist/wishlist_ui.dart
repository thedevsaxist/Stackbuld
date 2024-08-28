import 'package:flutter/material.dart';  // change this to the path to your commons.dart file

part 'wishlist_logic.dart';

class WishlistUi extends StatefulWidget {
  const WishlistUi({super.key});

  @override
  State<WishlistUi> createState() => _WishlistUi();
}

class _WishlistUi extends WishlistLogic {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
