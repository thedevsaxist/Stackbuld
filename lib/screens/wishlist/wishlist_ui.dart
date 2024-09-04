import 'package:stackbuld/commons.dart';


part 'wishlist_logic.dart';

class WishlistUi extends StatefulWidget {
  const WishlistUi({super.key});

  @override
  State<WishlistUi> createState() => _WishlistUi();
}

class _WishlistUi extends WishlistLogic {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appBackgroundColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            wishlistItems,
            (index) {
              //TODO: fill this out
              return const WishlistItemUi(
                name: '',
                price: '',
                productImage: m4Car,
              );
            },
          ),
        ),
      ),
    );
  }
}
