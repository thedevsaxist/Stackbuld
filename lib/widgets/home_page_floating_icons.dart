import 'package:stackbuld/commons.dart';

class HomePageFloatingIcons extends StatefulWidget {
  const HomePageFloatingIcons({
    super.key,
  });

  @override
  State<HomePageFloatingIcons> createState() => _HomePageFloatingIconsState();
}

class _HomePageFloatingIconsState extends State<HomePageFloatingIcons> {
  void addNewProduct() => Navigator.pushNamed(context, '/add_product');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // layout selector
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: FloatingActionButton.extended(
            heroTag: 'layout-tag',
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              size: fontSizeHeadline,
            ),
            label: const Text('Layout'),
          ),
        ),

        // add new item
        FloatingActionButton(
          heroTag: 'add-product-tag',
          onPressed: addNewProduct,
          child: Icon(
            Icons.add,
            size: fontSizeHeadline,
          ),
        ),
      ],
    );
  }
}
