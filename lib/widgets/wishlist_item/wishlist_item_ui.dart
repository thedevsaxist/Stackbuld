import 'package:stackbuld/commons.dart';

part 'wishlist_item_logic.dart';

class WishlistItemUi extends StatefulWidget {
  const WishlistItemUi({super.key, required this.name, required this.price, required this.productImage});

  final String name;
  final String price;
  final String productImage;

  @override
  State<WishlistItemUi> createState() => _WishlistItemUi();
}

class _WishlistItemUi extends WishlistItemLogic {
  @override
  Widget build(BuildContext context) {
    return ListModel(
      name: widget.name,
      price: widget.price,
      productImage: widget.productImage,
      baseRow: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // remove from wishlist button
          Text(
            'Remove',
            style: GoogleFonts.poppins(),
          ),

          // add to cart button
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: appSecondaryColor,
                    // color: Colors.red,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(6),
                color: appPrimaryColor,
              ),
              child: Text(
                'Add To Cart',
                style: GoogleFonts.poppins(color: appBackgroundColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
