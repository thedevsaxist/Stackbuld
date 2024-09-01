import 'package:stackbuld/commons.dart';
import 'package:stackbuld/styles/themes.dart';

part 'product_details_logic.dart';

class ProductDetailsUi extends StatefulWidget {
  const ProductDetailsUi({super.key});

  @override
  State<ProductDetailsUi> createState() => _ProductDetailsUi();
}

class _ProductDetailsUi extends ProductDetailsLogic {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              // product image
              m4Car,

              // back button
              Positioned(
                left: 10,
                top: 50,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.cancel_sharp,
                    size: 32,
                    color: appPrimaryColor,
                  ),
                ),
              ),

              // save item
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appBackgroundColor,
                  ),
                  child: const AddToFavorite(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product name
                  Text(
                    'Metamor4sis Car',
                    style: GoogleFonts.poppins(fontSize: fontSizeTitle),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // product price
                      Text(
                        '₦ 60,000',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeHeadline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // product rating
                      const Rating(numberOfStars: 5),
                    ],
                  ),

                  const Spacer(),

                  //TODO: Add a 'read more' feature to this

                  // product Description
                  Text(
                    "You've probably seen hero animations many times. For example, a screen displays a list of thumbnails representing items for sale. Selecting an item flies it to a new screen, containing more details and a 'Buy' button.",
                    style: GoogleFonts.poppins(
                      fontSize: fontSizeBody,
                      color: appSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // add to cart
          // TODO: When this button is pressed, it should add the product to the cart
          const CustomButton(buttonLabel: 'add to cart')
        ],
      ),
    );
  }
}
