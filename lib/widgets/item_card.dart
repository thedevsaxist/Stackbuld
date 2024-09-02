import 'package:stackbuld/commons.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productRating,
  });

  final String productName;
  final String productPrice;
  final int productRating;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product_details'),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product image

                Expanded(
                  child: Center(
                    child: m4Car,
                  ),
                ),

                sizedBoxHeightOf8,

                // product name

                // TODO: shorten the name when it gets too long
                Text(
                  widget.productName,
                  style: GoogleFonts.poppins(),
                ),

                // product price
                Text(
                  '₦ ${widget.productPrice}',
                  style: GoogleFonts.poppins(
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // product rating

                    Rating(numberOfStars: widget.productRating),

                    // save item
                    const AddToFavorite(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
