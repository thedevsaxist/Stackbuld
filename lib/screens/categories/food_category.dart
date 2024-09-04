import 'package:stackbuld/commons.dart';

class FoodCategory extends StatefulWidget {
  const FoodCategory({super.key});

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  /// instance of the database connection
  final FirestoreDatabase firestoreDatabase = FirestoreDatabase();

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      catalogue: firestoreDatabase.foodCatalogue,
    );
  }
}
