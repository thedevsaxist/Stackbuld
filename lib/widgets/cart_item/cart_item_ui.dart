import 'package:stackbuld/commons.dart';
import 'package:stackbuld/widgets/list_model.dart';

part 'cart_item_logic.dart';

class CartItemUi extends StatefulWidget {
  const CartItemUi({
    super.key,
  });

  @override
  State<CartItemUi> createState() => _CartItemUi();
}

class _CartItemUi extends CartItemLogic {
  @override
  Widget build(BuildContext context) {
    return ListModel(
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
