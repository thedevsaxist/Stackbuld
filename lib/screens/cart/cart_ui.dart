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
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Cart',
          style: GoogleFonts.poppins(
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  '₦ 100,000',
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
                    'CART ITEMS ($productCount)',
                    style: GoogleFonts.poppins(
                      fontSize: fontSizeBody,
                      color: Colors.grey[600],
                    ),
                  ),
                  sizedBoxHeightOf8,
                  Expanded(
                    child: ListView.builder(
                      itemCount: productCount,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const CartItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // checkout button
          const CustomButton(
            buttonLabel: 'CHECKOUT',
          ),
          sizedBoxHeightOf32,
        ],
      ),
    );
  }
}
