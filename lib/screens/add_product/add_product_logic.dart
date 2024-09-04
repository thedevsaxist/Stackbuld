part of 'add_product_ui.dart';

abstract class AddProductLogic extends State<AddProductUi> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController productImageController = TextEditingController();

  final FirestoreDatabase firestoreDatabase = FirestoreDatabase();

  String _selectedCatalogue = 'food';

  List<String> catalogs = ['Food Catalogue', 'Devices', 'Sports', 'Cosmetics'];

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _selectedCatalogue = selectedValue;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    priceController.dispose();
    ratingController.dispose();
    productNameController.dispose();
    descriptionController.dispose();
    productImageController.dispose();
    super.dispose();
  }

  void addProduct() {
    try {
      if (productNameController.text.isNotEmpty &&
          priceController.text.isNotEmpty &&
          ratingController.text.isNotEmpty &&
          descriptionController.text.isNotEmpty) {
        final productModel = ProductModel(
          name: productNameController.text.trim(),
          price: priceController.text.trim(),
          rating: ratingController.text.trim(),
          description: descriptionController.text.trim(),
          productImage:
              'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQl2ZQDk019PKZ5dK5sxx8TYDNZjxoqs9wD4faDaukfN8h0uwtrO6Z0OtBHzFxmSQf4C1GQZXs7IFrs9gduN10s2UjGWdpfwQiEmfcZ9YKjIS0ofFnuQovm8ScsW8XxqR2Y853uKsI&usqp=CAc',
        );

        firestoreDatabase.addProducts(
          productModel,
          context,
          firestoreDatabase.foodCatalogue,
        );
      } else {
        print('Please fill in all fields');
      }
    } catch (e) {
      print('there was an error while adding to cart $e');
    }
  }
}
