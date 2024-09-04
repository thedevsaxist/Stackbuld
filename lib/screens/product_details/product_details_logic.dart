part of 'product_details_ui.dart';

abstract class ProductDetailsLogic extends State<ProductDetailsUi> {
  late ProductDetailsHelperMethod helperMethod;

  @override
  void initState() {
    super.initState();
    helperMethod = ProductDetailsHelperMethod(context: context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  // void addToCart() => helperMethod.addToCart(
  //       ProductModel(
  //         name: widget.productName,
  //         price: widget.productPrice,
  //         productImage: widget.imagePath,
  //       ),
  //     );

  void addToCart(){
    // context.read<ProductDetailsHelperMethod>().addToCart(cartItems)
  }
}
