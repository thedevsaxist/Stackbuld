import 'package:stackbuld/commons.dart';

class HomePageFloatingIcons extends StatelessWidget {
  const HomePageFloatingIcons({
    super.key,
  });

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
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: fontSizeHeadline,
          ),
        ),
      ],
    );
  }
}
