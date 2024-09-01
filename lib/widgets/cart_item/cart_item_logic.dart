part of 'cart_item_ui.dart';

abstract class CartItemLogic extends State<CartItemUi> {
  int itemQuantity = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// this increments the quantity of a particular item in the cart.
  /// It automatically increases the subtotal in accordance to the total quantity of items in the cart.
  increment() {
    return setState(() {
      itemQuantity++;
    });
  }

  // this decrements the quantity of a particular item in the cart.
  /// It automatically decreases the subtotal in accordance to the total quantity of items in the cart.
  /// The least quantity an item can be is 1.
  decrement() {
    return setState(() {
      if (itemQuantity > 1) {
        itemQuantity--;
      }
    });
  }
}
