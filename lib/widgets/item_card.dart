import 'package:stackbuld/commons.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

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
                Text(
                  'Metamor4sis Car',
                  style: GoogleFonts.poppins(),
                ),

                // product price
                Text(
                  '₦ 60,000',
                  style: GoogleFonts.poppins(
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // product rating
                    Rating(numberOfStars: 5),

                    // save item
                    AddToFavorite(),
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
