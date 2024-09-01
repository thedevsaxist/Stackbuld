import 'package:stackbuld/commons.dart';

class AddToFavorite extends StatefulWidget {
  const AddToFavorite({super.key});

  @override
  State<AddToFavorite> createState() => _AddToFavoriteState();
}

class _AddToFavoriteState extends State<AddToFavorite> {
  bool addToFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          addToFavorite = !addToFavorite;
        });
      },
      icon: Icon(
        addToFavorite == true ? Icons.favorite : Icons.favorite_border,
        color: addToFavorite == true ? Colors.red : null,
      ),
    );
  }
}
