import 'package:stackbuld/commons.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stackbuld',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageUi(),
        '/cart': (context) => const CartPageUi(),
        '/wishlist': (context) => const WishlistUi(),
        '/filter': (context) => const ProductFilterPageUi(),
        '/product_details': (context) => const ProductDetailsUi(),
      },
    );
  }
}
