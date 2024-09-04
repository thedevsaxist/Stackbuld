import 'package:stackbuld/commons.dart';

part 'cart_item_logic.dart';

class CartItemUi extends StatefulWidget {
  const CartItemUi({
    super.key,
    required this.name,
    required this.price,
    required this.productImage,
  });

  final String name;
  final String price;
  final String productImage;

  @override
  State<CartItemUi> createState() => _CartItemUi();
}

class _CartItemUi extends CartItemLogic {
  @override
  Widget build(BuildContext context) {
    return ListModel(
      name: widget.name,
      price: widget.price,
      productImage: widget.productImage,
      baseRow: Row(
        children: [
          Text(
            'Remove',
            style: GoogleFonts.poppins(),
          ),
          const Spacer(),
          IncrementButton(
            icon: Icons.remove,
            onTap: decrement,
          ),

          sizedBoxWidthOf32,

          // product quantity
          Text(
            itemQuantity.toString(),
          ),

          sizedBoxWidthOf32,

          IncrementButton(
            icon: Icons.add,
            onTap: increment,
          ),
        ],
      ),
    );
  }
}
