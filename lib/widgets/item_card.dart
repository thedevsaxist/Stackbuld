import 'package:stackbuld/commons.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productRating,
    required this.description,
    required this.imagePath,
  });

  final String productName;
  final String productPrice;
  final double productRating;
  final String description;
  final String imagePath;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => ProductDetailsUi(
            productName: widget.productName,
            productPrice: widget.productPrice,
            productRating: widget.productRating,
            description: widget.description,
            imagePath: widget.imagePath,
          ),
        ),
      ),
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
                    child: Image.asset(m4Car),
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

                    Rating(productRating: widget.productRating),

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
