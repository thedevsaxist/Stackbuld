part of 'product_filter_page_ui.dart';

abstract class ProductFilterPageLogic extends State<ProductFilterPageUi> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    fromController.dispose();
    toController.dispose();
  }
}
