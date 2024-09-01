import 'package:stackbuld/commons.dart';

part 'wishlist_item_logic.dart';

class WishlistItemUi extends StatefulWidget {
  const WishlistItemUi({super.key});

  @override
  State<WishlistItemUi> createState() => _WishlistItemUi();
}

class _WishlistItemUi extends WishlistItemLogic {
  @override
  Widget build(BuildContext context) {
    return ListModel(
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
