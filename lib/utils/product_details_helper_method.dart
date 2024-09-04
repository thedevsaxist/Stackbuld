import 'package:stackbuld/commons.dart';

class ProductDetailsHelperMethod extends ChangeNotifier {
  final BuildContext context;

  ProductDetailsHelperMethod({
    required this.context,
  });

  /// This is responsible for storing all the items in the cart
  final List<ProductModel> _cartItems = [];
  List<ProductModel> get cartItems => _cartItems;

  /// This method adds an item to the cart, passing their their name, image and price to the cart item list.
  void addToCart(ProductModel product) {
    cartItems.add(product);
    notifyListeners();

    // TODO: a snack bar should show that it was added to cart
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        // width: 200,
        dismissDirection: DismissDirection.up,

        content: Text(
          '${product.name} added to cart',
          style: GoogleFonts.poppins(),
        ),
      ),
    );

    // go back to the home page
    Future.delayed(
      const Duration(seconds: 5),
    ).then((_) {
      return Navigator.pop(context);
    });
  }

  /// This method removes the item from the cart
  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    notifyListeners();
  }
}
