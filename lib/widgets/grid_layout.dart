import 'package:stackbuld/commons.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ItemCard();
      },
    );
  }
}
