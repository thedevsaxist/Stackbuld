part of 'cart_ui.dart';

abstract class CartPageLogic extends State<CartPageUi> {
  /// This stores the subtotal of all the items in the cart according to their respective prices relative to quantity.
  double subtotal = 0;

  /// This is responsible for storing all the items in the cart
  // late List<ProductModel> cartItems;


  @override
  void initState() {
    super.initState();
    calculateSubtotal();
    
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// This method calculates the subtotal of all the items in the cart by adding together their respective prices according to quantity.
  void calculateSubtotal() {
    // for (ProductModel item in cartItems) {
    //   subtotal += double.parse(item.price);
    // }
  }
}
