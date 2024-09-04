import 'package:stackbuld/commons.dart';

part 'product_details_logic.dart';

class ProductDetailsUi extends StatefulWidget {
  const ProductDetailsUi({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productRating,
    required this.imagePath,
    required this.description,
  });

  final String productName;
  final String productPrice;
  final double productRating;
  final String imagePath;
  final String description;

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
              Image.asset(
                widget.imagePath,
              ),

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
                    widget.productName,
                    style: GoogleFonts.poppins(fontSize: fontSizeTitle),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // product price
                      Text(
                        '₦ ${widget.productPrice}',
                        style: GoogleFonts.poppins(
                          fontSize: fontSizeHeadline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // product rating
                      Rating(
                        productRating: widget.productRating,
                      ),
                    ],
                  ),

                  const Spacer(),

                  //TODO: Add a 'read more' feature to this

                  // product Description
                  Text(
                    widget.description,
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
          CustomButton(
            buttonLabel: 'add to cart',
            onTap: addToCart,
          )
        ],
      ),
    );
  }
}
