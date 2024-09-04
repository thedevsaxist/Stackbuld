import 'package:provider/provider.dart';
import 'package:stackbuld/commons.dart';

part 'cart_logic.dart';

class CartPageUi extends StatefulWidget {
  const CartPageUi({super.key});

  @override
  State<CartPageUi> createState() => _CartPageUi();
}

class _CartPageUi extends CartPageLogic {
  @override
  Widget build(BuildContext context) {
  final cartItems = context.watch<ProductDetailsHelperMethod>().cartItems;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // cart summary
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 16.0),
            child: Text(
              'CART SUMMARY',
              style: GoogleFonts.poppins(
                fontSize: fontSizeBody,
                color: Colors.grey[600],
              ),
            ),
          ),

          // subtotal
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: GoogleFonts.poppins(
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '₦ $subtotal',
                  style: GoogleFonts.poppins(
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          sizedBoxHeightOf8,

          // cart items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CART ITEMS (${cartItems.length})',
                    style: GoogleFonts.poppins(
                      fontSize: fontSizeBody,
                      color: Colors.grey[600],
                    ),
                  ),
                  sizedBoxHeightOf8,
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CartItemUi(
                          name: cartItems[index].name,
                          price: cartItems[index].price.toString(),
                          productImage: cartItems[index].productImage,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // checkout button
          const CustomButton(
            buttonLabel: 'Checkout',
          ),
        ],
      ),
    );
  }
}
